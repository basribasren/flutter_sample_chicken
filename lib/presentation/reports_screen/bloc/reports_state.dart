// ignore_for_file: must_be_immutable

part of 'reports_bloc.dart';

/// Represents the state of Reports in the application.
class ReportsState extends Equatable {
  ReportsState({
    this.incomeValueEditTextController,
    this.expensesValueEditTextController,
    this.chickFeedRequirementValueEditTextController,
    this.feedTypeValueEditTextController,
    this.reportsModelObj,
  });

  TextEditingController? incomeValueEditTextController;

  TextEditingController? expensesValueEditTextController;

  TextEditingController? chickFeedRequirementValueEditTextController;

  TextEditingController? feedTypeValueEditTextController;

  ReportsModel? reportsModelObj;

  @override
  List<Object?> get props => [
        incomeValueEditTextController,
        expensesValueEditTextController,
        chickFeedRequirementValueEditTextController,
        feedTypeValueEditTextController,
        reportsModelObj,
      ];
  ReportsState copyWith({
    TextEditingController? incomeValueEditTextController,
    TextEditingController? expensesValueEditTextController,
    TextEditingController? chickFeedRequirementValueEditTextController,
    TextEditingController? feedTypeValueEditTextController,
    ReportsModel? reportsModelObj,
  }) {
    return ReportsState(
      incomeValueEditTextController:
          incomeValueEditTextController ?? this.incomeValueEditTextController,
      expensesValueEditTextController: expensesValueEditTextController ??
          this.expensesValueEditTextController,
      chickFeedRequirementValueEditTextController:
          chickFeedRequirementValueEditTextController ??
              this.chickFeedRequirementValueEditTextController,
      feedTypeValueEditTextController: feedTypeValueEditTextController ??
          this.feedTypeValueEditTextController,
      reportsModelObj: reportsModelObj ?? this.reportsModelObj,
    );
  }
}
