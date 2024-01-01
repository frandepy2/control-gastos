import 'package:control_gastos/src/dashboard/models/transaction_model.dart';
import 'package:control_gastos/utils/session_singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardState.initial()) {
    on<DashboardEvent>(mapEventToState);
  }

  Future<void> mapEventToState(DashboardEvent event, Emitter<DashboardState> emit) {
    return event.map(started: (e) async {
      emit(state.copyWith(
        isLoading: true,
      ));

      List<TransactionModel> transactions = [];

      try {
        await _getData(transactions, emit);
      } catch (e) {
        print(e);
        print('Error al obtener los datos');
        emit(state.copyWith(
          isLoading: false,
          transactions: transactions,
        ));
      }
    });
  }

  Future<void> _getData(List<TransactionModel> transactions, Emitter<DashboardState> emit) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference collection = firestore.collection('transacciones');
    QuerySnapshot querySnapshot = await collection.where('uid', isEqualTo: SessionSingleton.instance.uid).get();
    querySnapshot.docs.forEach((DocumentSnapshot document) {
      print('ID del documento: ${document.id}');
      print('Datos: ${document.data()}');
      Map<String, dynamic> data = document.data()! as Map<String, dynamic>;

      TransactionModel transaction = TransactionModel(
        uuid: document.id,
        uid: data["uid"],
        description: data["description"],
        amount: data["amount"]!.toDouble(),
        isOutgoing: data["isOutgoing"],
        dateCreated: data["dateCreated"]!.toDate(),
        category: data["category"],
      );

      transactions.add(transaction);
    });
    //Calculamos el valor de lo gastado y lo indicamos en la pantalla principal
    double currency = _calculateCurrency(transactions);

    emit(state.copyWith(
      isLoading: false,
      transactions: transactions,
      currency: currency,
    ));
  }

  double _calculateCurrency(List<TransactionModel> transactions) {
    double negative = 0;
    transactions.forEach((element) {
      if (element.isOutgoing!) {
        negative += element.amount!;
      }
    });

    return negative;
  }
}
