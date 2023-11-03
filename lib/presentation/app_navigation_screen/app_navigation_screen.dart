import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              otpText: "splash screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "OTP Verification One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpVerificationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage(service/buy) - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageServiceBuyContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Create Profile One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createProfileOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Introduction screen One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.introductionScreenOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Introduction screen".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.introductionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Register".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "OTP Verification Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.otpVerificationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Create Profile".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage(service/buy) One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageServiceBuyOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "My Ads One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myAdsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage- sell One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageSellOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage- sell".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageSellScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage- todays rate".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageTodaysRateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Homepage- todays rate One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homepageTodaysRateOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Subscription".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.subscriptionScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "About Us".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.aboutUsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Terms and Conditions".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.termsAndConditionsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Network Error".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.networkErrorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Screen Loading".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.screenLoadingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Income".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.incomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Expenses".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.expensesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed Type One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.feedTypeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed bag size".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.feedBagSizeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Egg Tray Size".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.eggTraySizeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reminders One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.remindersOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Customer List".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customerListScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Farm Settings".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.farmSettingsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "User Info".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userInfoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Expenses One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.expensesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed Type".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.feedTypeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed bag size One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.feedBagSizeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Egg Tray Size One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eggTraySizeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reminders".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.remindersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Currency".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.currencyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Language".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.languageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reports One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reportsOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reports".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.reportsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "My Ads".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myAdsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Customer List One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.customerListOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Income Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.incomeThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Expenses Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.expensesThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed Type Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.feedTypeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed bag size Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.feedBagSizeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Egg Tray Size Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.eggTraySizeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reminders Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.remindersTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Reminders Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.remindersThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "My Ads Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myAdsTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Add Customer".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addCustomerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Vaccination Schedule Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.vaccinationScheduleSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Chick Feed Requirement Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.chickFeedRequirementFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Edit Batch".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.editBatchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "New Income".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newIncomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "New Expense".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newExpenseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "New feed served".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newFeedServedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new mortality".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newMortalityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new body weight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newBodyWeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new vaccination".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.newVaccinationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new medicine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newMedicineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new notes".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newNotesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new eggs".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newEggsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "new Sub User".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newSubUserScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Income Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.incomeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Expenses Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.expensesTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Batches - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.batchesTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "New Batch".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.newBatchScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText:
                                  "Single Batch- Records - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .singleBatchRecordsTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view expense".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewExpenseScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view feeding One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewFeedingOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view mortality".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewMortalityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view body weight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewBodyWeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Stocks".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchStocksScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText:
                                  "Single batch- view vaccination - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .singleBatchViewVaccinationTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view medicine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewMedicineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Notes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchNotesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-view eggs".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewEggsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Batches- Sub User".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.batchesSubUserScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- view feeding".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchViewFeedingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- income".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchIncomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- income Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchIncomeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- income Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchIncomeThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Expenses".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchExpensesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- income One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchIncomeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Expenses One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchExpensesOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Feeding".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchFeedingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Mortality".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchMortalityScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Body weight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchBodyWeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText:
                                  "Single batch- view vaccination One - Tab Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .singleBatchViewVaccinationOneTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Vaccination Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchVaccinationTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Medicine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchMedicineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Add Note".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchAddNoteScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch- Egg".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchEggScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Batches- Sub User One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.batchesSubUserOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Batches- Sub User Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.batchesSubUserTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Vaccination Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchVaccinationThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Vaccination One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchVaccinationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Vaccination Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchVaccinationFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Single batch-Vaccination".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.singleBatchVaccinationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "My Orders".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myOrdersScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Add Order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.inventoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Add One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryAddOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer Six".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Feed Type Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.feedTypeThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Add Order One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addOrderOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Add Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryAddTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              otpText: "Inventory- Transfer Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.inventoryTransferFiveScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String otpText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  otpText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
