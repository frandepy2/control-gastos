part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    bool? isLoading,
    double? currency,
    double? budget,
    int? percentage,
    List<TransactionModel>? transactions,
  }) = _DashboardState;
  factory DashboardState.initial() => _DashboardState(
        isLoading: false,
        currency: 0,
        budget: 0,
        transactions: null,
        percentage: 0,
      );
}
