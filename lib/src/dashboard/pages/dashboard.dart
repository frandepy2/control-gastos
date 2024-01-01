import 'package:control_gastos/src/dashboard/bloc/dashboard_bloc.dart';
import 'package:control_gastos/src/dashboard/models/transaction_model.dart';
import 'package:control_gastos/utils/constants/icono_categoria.dart';
import 'package:control_gastos/utils/session_singleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc()..add(DashboardEvent.started()),
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "Gastos Check",
                style: GoogleFonts.lato(),
              ),
              centerTitle: true,
            ),
            body: state.isLoading!
                ? Center(
                    child: CircularProgressIndicator(
                      color: Colors.indigo,
                    ),
                  )
                : _dashboard(state.transactions ?? [], state),
          );
        },
      ),
    );
  }

  SafeArea _dashboard(List<TransactionModel> transactions, DashboardState state) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildWelcome(state),
          const SizedBox(height: 8),
          _buidInfoSection(state),
          const SizedBox(height: 8),
          _buildRecentTransactions(transactions, state),
        ],
      ),
    );
  }

  Widget _buildWelcome(DashboardState state) {
    return Container(
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bienvenido',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
            Text(
              '${SessionSingleton.instance.email}',
              style: GoogleFonts.lato(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        trailing: GestureDetector(
          onTap: () {
            print("TODO: Agregar nuevo item");
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            width: 50,
            height: 50,
            child: Center(
                child: Icon(
              Icons.add,
              color: Colors.white,
            )),
          ),
        ),
      ),
    );
  }

  _buidInfoSection(DashboardState state) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    "Gs.${state.currency!.toInt()}",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    '${state.percentage}% del presupuesto. ${state.budget!.toInt()} Gs.',
                    style: GoogleFonts.roboto(
                      color: Color.fromARGB(255, 147, 168, 243),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Ingresos',
                          icon: Icons.arrow_upward,
                          iconColor: Colors.green,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: CustomButton(
                          text: 'Egresos',
                          icon: Icons.arrow_downward,
                          iconColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildRecentTransactions(List<TransactionModel> transactions, DashboardState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Actividad Reciente",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: ((context, index) {
                  return Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Icon(
                          IconoCategoria.obtenerIconoCategoria(transactions[index].category!),
                          color: Colors.white,
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactions[index].description!,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              DateFormat.yMMMMd('en_US').add_jm().format(transactions[index].dateCreated!),
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color.fromARGB(255, 133, 133, 133),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      trailing: Text(
                        "${transactions[index].amount!.toInt()} Gs.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: transactions[index].isOutgoing! ? Colors.red : Colors.green,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
