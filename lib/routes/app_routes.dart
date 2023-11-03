import 'package:flutter/material.dart';
import 'package:basri_s_application4/presentation/splash_screen/splash_screen.dart';
import 'package:basri_s_application4/presentation/otp_verification_one_screen/otp_verification_one_screen.dart';
import 'package:basri_s_application4/presentation/homepage_service_buy_container_screen/homepage_service_buy_container_screen.dart';
import 'package:basri_s_application4/presentation/create_profile_one_screen/create_profile_one_screen.dart';
import 'package:basri_s_application4/presentation/introduction_screen_one_screen/introduction_screen_one_screen.dart';
import 'package:basri_s_application4/presentation/introduction_screen/introduction_screen.dart';
import 'package:basri_s_application4/presentation/login_screen/login_screen.dart';
import 'package:basri_s_application4/presentation/register_screen/register_screen.dart';
import 'package:basri_s_application4/presentation/otp_verification_two_screen/otp_verification_two_screen.dart';
import 'package:basri_s_application4/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:basri_s_application4/presentation/homepage_service_buy_one_screen/homepage_service_buy_one_screen.dart';
import 'package:basri_s_application4/presentation/my_ads_one_screen/my_ads_one_screen.dart';
import 'package:basri_s_application4/presentation/homepage_sell_one_screen/homepage_sell_one_screen.dart';
import 'package:basri_s_application4/presentation/homepage_sell_screen/homepage_sell_screen.dart';
import 'package:basri_s_application4/presentation/homepage_todays_rate_screen/homepage_todays_rate_screen.dart';
import 'package:basri_s_application4/presentation/homepage_todays_rate_one_screen/homepage_todays_rate_one_screen.dart';
import 'package:basri_s_application4/presentation/subscription_screen/subscription_screen.dart';
import 'package:basri_s_application4/presentation/about_us_screen/about_us_screen.dart';
import 'package:basri_s_application4/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:basri_s_application4/presentation/network_error_screen/network_error_screen.dart';
import 'package:basri_s_application4/presentation/screen_loading_screen/screen_loading_screen.dart';
import 'package:basri_s_application4/presentation/income_screen/income_screen.dart';
import 'package:basri_s_application4/presentation/expenses_screen/expenses_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_one_screen/chick_feed_requirement_one_screen.dart';
import 'package:basri_s_application4/presentation/feed_type_one_screen/feed_type_one_screen.dart';
import 'package:basri_s_application4/presentation/feed_bag_size_screen/feed_bag_size_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_one_screen/vaccination_schedule_one_screen.dart';
import 'package:basri_s_application4/presentation/egg_tray_size_screen/egg_tray_size_screen.dart';
import 'package:basri_s_application4/presentation/reminders_one_screen/reminders_one_screen.dart';
import 'package:basri_s_application4/presentation/customer_list_screen/customer_list_screen.dart';
import 'package:basri_s_application4/presentation/farm_settings_screen/farm_settings_screen.dart';
import 'package:basri_s_application4/presentation/user_info_screen/user_info_screen.dart';
import 'package:basri_s_application4/presentation/expenses_one_screen/expenses_one_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_screen/chick_feed_requirement_screen.dart';
import 'package:basri_s_application4/presentation/feed_type_screen/feed_type_screen.dart';
import 'package:basri_s_application4/presentation/feed_bag_size_one_screen/feed_bag_size_one_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_screen/vaccination_schedule_screen.dart';
import 'package:basri_s_application4/presentation/egg_tray_size_one_screen/egg_tray_size_one_screen.dart';
import 'package:basri_s_application4/presentation/reminders_screen/reminders_screen.dart';
import 'package:basri_s_application4/presentation/currency_screen/currency_screen.dart';
import 'package:basri_s_application4/presentation/language_screen/language_screen.dart';
import 'package:basri_s_application4/presentation/reports_one_screen/reports_one_screen.dart';
import 'package:basri_s_application4/presentation/reports_screen/reports_screen.dart';
import 'package:basri_s_application4/presentation/my_ads_screen/my_ads_screen.dart';
import 'package:basri_s_application4/presentation/customer_list_one_screen/customer_list_one_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_two_screen/chick_feed_requirement_two_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_four_screen/chick_feed_requirement_four_screen.dart';
import 'package:basri_s_application4/presentation/income_three_screen/income_three_screen.dart';
import 'package:basri_s_application4/presentation/expenses_three_screen/expenses_three_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_three_screen/chick_feed_requirement_three_screen.dart';
import 'package:basri_s_application4/presentation/feed_type_two_screen/feed_type_two_screen.dart';
import 'package:basri_s_application4/presentation/feed_bag_size_two_screen/feed_bag_size_two_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_four_screen/vaccination_schedule_four_screen.dart';
import 'package:basri_s_application4/presentation/egg_tray_size_two_screen/egg_tray_size_two_screen.dart';
import 'package:basri_s_application4/presentation/reminders_two_screen/reminders_two_screen.dart';
import 'package:basri_s_application4/presentation/reminders_three_screen/reminders_three_screen.dart';
import 'package:basri_s_application4/presentation/my_ads_two_screen/my_ads_two_screen.dart';
import 'package:basri_s_application4/presentation/add_customer_screen/add_customer_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_five_screen/vaccination_schedule_five_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_two_screen/vaccination_schedule_two_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_three_screen/vaccination_schedule_three_screen.dart';
import 'package:basri_s_application4/presentation/vaccination_schedule_six_screen/vaccination_schedule_six_screen.dart';
import 'package:basri_s_application4/presentation/chick_feed_requirement_five_screen/chick_feed_requirement_five_screen.dart';
import 'package:basri_s_application4/presentation/edit_batch_screen/edit_batch_screen.dart';
import 'package:basri_s_application4/presentation/new_income_screen/new_income_screen.dart';
import 'package:basri_s_application4/presentation/new_expense_screen/new_expense_screen.dart';
import 'package:basri_s_application4/presentation/new_feed_served_screen/new_feed_served_screen.dart';
import 'package:basri_s_application4/presentation/new_mortality_screen/new_mortality_screen.dart';
import 'package:basri_s_application4/presentation/new_body_weight_screen/new_body_weight_screen.dart';
import 'package:basri_s_application4/presentation/new_vaccination_screen/new_vaccination_screen.dart';
import 'package:basri_s_application4/presentation/new_medicine_screen/new_medicine_screen.dart';
import 'package:basri_s_application4/presentation/new_notes_screen/new_notes_screen.dart';
import 'package:basri_s_application4/presentation/new_eggs_screen/new_eggs_screen.dart';
import 'package:basri_s_application4/presentation/new_sub_user_screen/new_sub_user_screen.dart';
import 'package:basri_s_application4/presentation/income_two_screen/income_two_screen.dart';
import 'package:basri_s_application4/presentation/expenses_two_screen/expenses_two_screen.dart';
import 'package:basri_s_application4/presentation/batches_tab_container_screen/batches_tab_container_screen.dart';
import 'package:basri_s_application4/presentation/new_batch_screen/new_batch_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_records_tab_container_screen/single_batch_records_tab_container_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_expense_screen/single_batch_view_expense_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_feeding_one_screen/single_batch_view_feeding_one_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_mortality_screen/single_batch_view_mortality_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_body_weight_screen/single_batch_view_body_weight_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_stocks_screen/single_batch_stocks_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_tab_container_screen/single_batch_view_vaccination_tab_container_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_medicine_screen/single_batch_view_medicine_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_notes_screen/single_batch_notes_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_eggs_screen/single_batch_view_eggs_screen.dart';
import 'package:basri_s_application4/presentation/batches_sub_user_screen/batches_sub_user_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_feeding_screen/single_batch_view_feeding_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_income_screen/single_batch_income_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_income_two_screen/single_batch_income_two_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_income_three_screen/single_batch_income_three_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_expenses_screen/single_batch_expenses_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_income_one_screen/single_batch_income_one_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_expenses_one_screen/single_batch_expenses_one_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_feeding_screen/single_batch_feeding_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_mortality_screen/single_batch_mortality_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_body_weight_screen/single_batch_body_weight_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_one_tab_container_screen/single_batch_view_vaccination_one_tab_container_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_vaccination_two_screen/single_batch_vaccination_two_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_medicine_screen/single_batch_medicine_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_add_note_screen/single_batch_add_note_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_egg_screen/single_batch_egg_screen.dart';
import 'package:basri_s_application4/presentation/batches_sub_user_one_screen/batches_sub_user_one_screen.dart';
import 'package:basri_s_application4/presentation/batches_sub_user_two_screen/batches_sub_user_two_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_vaccination_three_screen/single_batch_vaccination_three_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_vaccination_one_screen/single_batch_vaccination_one_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_vaccination_four_screen/single_batch_vaccination_four_screen.dart';
import 'package:basri_s_application4/presentation/single_batch_vaccination_screen/single_batch_vaccination_screen.dart';
import 'package:basri_s_application4/presentation/my_orders_screen/my_orders_screen.dart';
import 'package:basri_s_application4/presentation/add_order_screen/add_order_screen.dart';
import 'package:basri_s_application4/presentation/inventory_screen/inventory_screen.dart';
import 'package:basri_s_application4/presentation/inventory_add_one_screen/inventory_add_one_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_one_screen/inventory_transfer_one_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_six_screen/inventory_transfer_six_screen.dart';
import 'package:basri_s_application4/presentation/feed_type_three_screen/feed_type_three_screen.dart';
import 'package:basri_s_application4/presentation/add_order_one_screen/add_order_one_screen.dart';
import 'package:basri_s_application4/presentation/inventory_add_two_screen/inventory_add_two_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_two_screen/inventory_transfer_two_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_screen/inventory_transfer_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_four_screen/inventory_transfer_four_screen.dart';
import 'package:basri_s_application4/presentation/inventory_transfer_five_screen/inventory_transfer_five_screen.dart';
import 'package:basri_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String otpVerificationOneScreen = '/otp_verification_one_screen';

  static const String homepageServiceBuyPage = '/homepage_service_buy_page';

  static const String homepageServiceBuyContainerScreen =
      '/homepage_service_buy_container_screen';

  static const String createProfileOneScreen = '/create_profile_one_screen';

  static const String introductionScreenOneScreen =
      '/introduction_screen_one_screen';

  static const String introductionScreen = '/introduction_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String otpVerificationTwoScreen = '/otp_verification_two_screen';

  static const String createProfileScreen = '/create_profile_screen';

  static const String homepageServiceBuyOneScreen =
      '/homepage_service_buy_one_screen';

  static const String myAdsOneScreen = '/my_ads_one_screen';

  static const String homepageSellOneScreen = '/homepage_sell_one_screen';

  static const String homepageSellScreen = '/homepage_sell_screen';

  static const String homepageTodaysRateScreen = '/homepage_todays_rate_screen';

  static const String homepageTodaysRateOneScreen =
      '/homepage_todays_rate_one_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String networkErrorScreen = '/network_error_screen';

  static const String screenLoadingScreen = '/screen_loading_screen';

  static const String incomeScreen = '/income_screen';

  static const String expensesScreen = '/expenses_screen';

  static const String chickFeedRequirementOneScreen =
      '/chick_feed_requirement_one_screen';

  static const String feedTypeOneScreen = '/feed_type_one_screen';

  static const String feedBagSizeScreen = '/feed_bag_size_screen';

  static const String vaccinationScheduleOneScreen =
      '/vaccination_schedule_one_screen';

  static const String eggTraySizeScreen = '/egg_tray_size_screen';

  static const String remindersOneScreen = '/reminders_one_screen';

  static const String customerListScreen = '/customer_list_screen';

  static const String farmSettingsScreen = '/farm_settings_screen';

  static const String userInfoScreen = '/user_info_screen';

  static const String incomeOnePage = '/income_one_page';

  static const String expensesOneScreen = '/expenses_one_screen';

  static const String chickFeedRequirementScreen =
      '/chick_feed_requirement_screen';

  static const String feedTypeScreen = '/feed_type_screen';

  static const String feedBagSizeOneScreen = '/feed_bag_size_one_screen';

  static const String vaccinationScheduleScreen =
      '/vaccination_schedule_screen';

  static const String eggTraySizeOneScreen = '/egg_tray_size_one_screen';

  static const String remindersScreen = '/reminders_screen';

  static const String currencyScreen = '/currency_screen';

  static const String languageScreen = '/language_screen';

  static const String reportsOneScreen = '/reports_one_screen';

  static const String reportsScreen = '/reports_screen';

  static const String myAdsScreen = '/my_ads_screen';

  static const String customerListOneScreen = '/customer_list_one_screen';

  static const String chickFeedRequirementTwoScreen =
      '/chick_feed_requirement_two_screen';

  static const String chickFeedRequirementFourScreen =
      '/chick_feed_requirement_four_screen';

  static const String incomeThreeScreen = '/income_three_screen';

  static const String expensesThreeScreen = '/expenses_three_screen';

  static const String chickFeedRequirementThreeScreen =
      '/chick_feed_requirement_three_screen';

  static const String feedTypeTwoScreen = '/feed_type_two_screen';

  static const String feedBagSizeTwoScreen = '/feed_bag_size_two_screen';

  static const String vaccinationScheduleFourScreen =
      '/vaccination_schedule_four_screen';

  static const String eggTraySizeTwoScreen = '/egg_tray_size_two_screen';

  static const String remindersTwoScreen = '/reminders_two_screen';

  static const String remindersThreeScreen = '/reminders_three_screen';

  static const String myAdsTwoScreen = '/my_ads_two_screen';

  static const String addCustomerScreen = '/add_customer_screen';

  static const String vaccinationScheduleFiveScreen =
      '/vaccination_schedule_five_screen';

  static const String vaccinationScheduleTwoScreen =
      '/vaccination_schedule_two_screen';

  static const String vaccinationScheduleThreeScreen =
      '/vaccination_schedule_three_screen';

  static const String vaccinationScheduleSixScreen =
      '/vaccination_schedule_six_screen';

  static const String chickFeedRequirementFiveScreen =
      '/chick_feed_requirement_five_screen';

  static const String emptyBatchesPage = '/empty_batches_page';

  static const String editBatchScreen = '/edit_batch_screen';

  static const String newIncomeScreen = '/new_income_screen';

  static const String newExpenseScreen = '/new_expense_screen';

  static const String newFeedServedScreen = '/new_feed_served_screen';

  static const String newMortalityScreen = '/new_mortality_screen';

  static const String newBodyWeightScreen = '/new_body_weight_screen';

  static const String newVaccinationScreen = '/new_vaccination_screen';

  static const String newMedicineScreen = '/new_medicine_screen';

  static const String newNotesScreen = '/new_notes_screen';

  static const String newEggsScreen = '/new_eggs_screen';

  static const String newSubUserScreen = '/new_sub_user_screen';

  static const String incomeTwoScreen = '/income_two_screen';

  static const String expensesTwoScreen = '/expenses_two_screen';

  static const String singleBatchReportsPage = '/single_batch_reports_page';

  static const String batchesPage = '/batches_page';

  static const String batchesTabContainerScreen =
      '/batches_tab_container_screen';

  static const String newBatchScreen = '/new_batch_screen';

  static const String singleBatchRecordsPage = '/single_batch_records_page';

  static const String singleBatchRecordsTabContainerScreen =
      '/single_batch_records_tab_container_screen';

  static const String singleBatchViewIncomePage =
      '/single_batch_view_income_page';

  static const String singleBatchViewExpenseScreen =
      '/single_batch_view_expense_screen';

  static const String singleBatchViewFeedingOneScreen =
      '/single_batch_view_feeding_one_screen';

  static const String singleBatchViewMortalityScreen =
      '/single_batch_view_mortality_screen';

  static const String singleBatchViewBodyWeightScreen =
      '/single_batch_view_body_weight_screen';

  static const String singleBatchStocksScreen = '/single_batch_stocks_screen';

  static const String singleBatchViewVaccinationPage =
      '/single_batch_view_vaccination_page';

  static const String singleBatchViewVaccinationTabContainerScreen =
      '/single_batch_view_vaccination_tab_container_screen';

  static const String singleBatchViewMedicineScreen =
      '/single_batch_view_medicine_screen';

  static const String singleBatchNotesScreen = '/single_batch_notes_screen';

  static const String singleBatchViewEggsScreen =
      '/single_batch_view_eggs_screen';

  static const String batchesSubUserScreen = '/batches_sub_user_screen';

  static const String singleBatchViewFeedingScreen =
      '/single_batch_view_feeding_screen';

  static const String singleBatchIncomeScreen = '/single_batch_income_screen';

  static const String singleBatchIncomeTwoScreen =
      '/single_batch_income_two_screen';

  static const String singleBatchIncomeThreeScreen =
      '/single_batch_income_three_screen';

  static const String singleBatchExpensesScreen =
      '/single_batch_expenses_screen';

  static const String batchesOnePage = '/batches_one_page';

  static const String singleBatchAnalysisPage = '/single_batch_analysis_page';

  static const String singleBatchReportsOnePage =
      '/single_batch_reports_one_page';

  static const String singleBatchIncomeOneScreen =
      '/single_batch_income_one_screen';

  static const String singleBatchExpensesOneScreen =
      '/single_batch_expenses_one_screen';

  static const String singleBatchFeedingScreen = '/single_batch_feeding_screen';

  static const String singleBatchMortalityScreen =
      '/single_batch_mortality_screen';

  static const String singleBatchBodyWeightScreen =
      '/single_batch_body_weight_screen';

  static const String singleBatchViewVaccinationOnePage =
      '/single_batch_view_vaccination_one_page';

  static const String singleBatchViewVaccinationOneTabContainerScreen =
      '/single_batch_view_vaccination_one_tab_container_screen';

  static const String singleBatchVaccinationTwoScreen =
      '/single_batch_vaccination_two_screen';

  static const String singleBatchMedicineScreen =
      '/single_batch_medicine_screen';

  static const String singleBatchAddNoteScreen =
      '/single_batch_add_note_screen';

  static const String singleBatchEggScreen = '/single_batch_egg_screen';

  static const String batchesSubUserOneScreen = '/batches_sub_user_one_screen';

  static const String batchesSubUserTwoScreen = '/batches_sub_user_two_screen';

  static const String singleBatchVaccinationThreeScreen =
      '/single_batch_vaccination_three_screen';

  static const String singleBatchVaccinationOneScreen =
      '/single_batch_vaccination_one_screen';

  static const String singleBatchVaccinationFourScreen =
      '/single_batch_vaccination_four_screen';

  static const String singleBatchVaccinationScreen =
      '/single_batch_vaccination_screen';

  static const String newOrderPage = '/new_order_page';

  static const String newOrderTabContainerPage =
      '/new_order_tab_container_page';

  static const String myOrdersScreen = '/my_orders_screen';

  static const String addOrderScreen = '/add_order_screen';

  static const String inventoryScreen = '/inventory_screen';

  static const String inventoryAddOneScreen = '/inventory_add_one_screen';

  static const String inventoryTransferOneScreen =
      '/inventory_transfer_one_screen';

  static const String inventoryTransferSixScreen =
      '/inventory_transfer_six_screen';

  static const String feedTypeThreeScreen = '/feed_type_three_screen';

  static const String addOrderOneScreen = '/add_order_one_screen';

  static const String inventoryAddTwoScreen = '/inventory_add_two_screen';

  static const String inventoryTransferTwoScreen =
      '/inventory_transfer_two_screen';

  static const String inventoryTransferScreen = '/inventory_transfer_screen';

  static const String inventoryTransferFourScreen =
      '/inventory_transfer_four_screen';

  static const String inventoryTransferFiveScreen =
      '/inventory_transfer_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        otpVerificationOneScreen: OtpVerificationOneScreen.builder,
        homepageServiceBuyContainerScreen:
            HomepageServiceBuyContainerScreen.builder,
        createProfileOneScreen: CreateProfileOneScreen.builder,
        introductionScreenOneScreen: IntroductionScreenOneScreen.builder,
        introductionScreen: IntroductionScreen.builder,
        loginScreen: LoginScreen.builder,
        registerScreen: RegisterScreen.builder,
        otpVerificationTwoScreen: OtpVerificationTwoScreen.builder,
        createProfileScreen: CreateProfileScreen.builder,
        homepageServiceBuyOneScreen: HomepageServiceBuyOneScreen.builder,
        myAdsOneScreen: MyAdsOneScreen.builder,
        homepageSellOneScreen: HomepageSellOneScreen.builder,
        homepageSellScreen: HomepageSellScreen.builder,
        homepageTodaysRateScreen: HomepageTodaysRateScreen.builder,
        homepageTodaysRateOneScreen: HomepageTodaysRateOneScreen.builder,
        subscriptionScreen: SubscriptionScreen.builder,
        aboutUsScreen: AboutUsScreen.builder,
        termsAndConditionsScreen: TermsAndConditionsScreen.builder,
        networkErrorScreen: NetworkErrorScreen.builder,
        screenLoadingScreen: ScreenLoadingScreen.builder,
        incomeScreen: IncomeScreen.builder,
        expensesScreen: ExpensesScreen.builder,
        chickFeedRequirementOneScreen: ChickFeedRequirementOneScreen.builder,
        feedTypeOneScreen: FeedTypeOneScreen.builder,
        feedBagSizeScreen: FeedBagSizeScreen.builder,
        vaccinationScheduleOneScreen: VaccinationScheduleOneScreen.builder,
        eggTraySizeScreen: EggTraySizeScreen.builder,
        remindersOneScreen: RemindersOneScreen.builder,
        customerListScreen: CustomerListScreen.builder,
        farmSettingsScreen: FarmSettingsScreen.builder,
        userInfoScreen: UserInfoScreen.builder,
        expensesOneScreen: ExpensesOneScreen.builder,
        chickFeedRequirementScreen: ChickFeedRequirementScreen.builder,
        feedTypeScreen: FeedTypeScreen.builder,
        feedBagSizeOneScreen: FeedBagSizeOneScreen.builder,
        vaccinationScheduleScreen: VaccinationScheduleScreen.builder,
        eggTraySizeOneScreen: EggTraySizeOneScreen.builder,
        remindersScreen: RemindersScreen.builder,
        currencyScreen: CurrencyScreen.builder,
        languageScreen: LanguageScreen.builder,
        reportsOneScreen: ReportsOneScreen.builder,
        reportsScreen: ReportsScreen.builder,
        myAdsScreen: MyAdsScreen.builder,
        customerListOneScreen: CustomerListOneScreen.builder,
        chickFeedRequirementTwoScreen: ChickFeedRequirementTwoScreen.builder,
        chickFeedRequirementFourScreen: ChickFeedRequirementFourScreen.builder,
        incomeThreeScreen: IncomeThreeScreen.builder,
        expensesThreeScreen: ExpensesThreeScreen.builder,
        chickFeedRequirementThreeScreen:
            ChickFeedRequirementThreeScreen.builder,
        feedTypeTwoScreen: FeedTypeTwoScreen.builder,
        feedBagSizeTwoScreen: FeedBagSizeTwoScreen.builder,
        vaccinationScheduleFourScreen: VaccinationScheduleFourScreen.builder,
        eggTraySizeTwoScreen: EggTraySizeTwoScreen.builder,
        remindersTwoScreen: RemindersTwoScreen.builder,
        remindersThreeScreen: RemindersThreeScreen.builder,
        myAdsTwoScreen: MyAdsTwoScreen.builder,
        addCustomerScreen: AddCustomerScreen.builder,
        vaccinationScheduleFiveScreen: VaccinationScheduleFiveScreen.builder,
        vaccinationScheduleTwoScreen: VaccinationScheduleTwoScreen.builder,
        vaccinationScheduleThreeScreen: VaccinationScheduleThreeScreen.builder,
        vaccinationScheduleSixScreen: VaccinationScheduleSixScreen.builder,
        chickFeedRequirementFiveScreen: ChickFeedRequirementFiveScreen.builder,
        editBatchScreen: EditBatchScreen.builder,
        newIncomeScreen: NewIncomeScreen.builder,
        newExpenseScreen: NewExpenseScreen.builder,
        newFeedServedScreen: NewFeedServedScreen.builder,
        newMortalityScreen: NewMortalityScreen.builder,
        newBodyWeightScreen: NewBodyWeightScreen.builder,
        newVaccinationScreen: NewVaccinationScreen.builder,
        newMedicineScreen: NewMedicineScreen.builder,
        newNotesScreen: NewNotesScreen.builder,
        newEggsScreen: NewEggsScreen.builder,
        newSubUserScreen: NewSubUserScreen.builder,
        incomeTwoScreen: IncomeTwoScreen.builder,
        expensesTwoScreen: ExpensesTwoScreen.builder,
        batchesTabContainerScreen: BatchesTabContainerScreen.builder,
        newBatchScreen: NewBatchScreen.builder,
        singleBatchRecordsTabContainerScreen:
            SingleBatchRecordsTabContainerScreen.builder,
        singleBatchViewExpenseScreen: SingleBatchViewExpenseScreen.builder,
        singleBatchViewFeedingOneScreen:
            SingleBatchViewFeedingOneScreen.builder,
        singleBatchViewMortalityScreen: SingleBatchViewMortalityScreen.builder,
        singleBatchViewBodyWeightScreen:
            SingleBatchViewBodyWeightScreen.builder,
        singleBatchStocksScreen: SingleBatchStocksScreen.builder,
        singleBatchViewVaccinationTabContainerScreen:
            SingleBatchViewVaccinationTabContainerScreen.builder,
        singleBatchViewMedicineScreen: SingleBatchViewMedicineScreen.builder,
        singleBatchNotesScreen: SingleBatchNotesScreen.builder,
        singleBatchViewEggsScreen: SingleBatchViewEggsScreen.builder,
        batchesSubUserScreen: BatchesSubUserScreen.builder,
        singleBatchViewFeedingScreen: SingleBatchViewFeedingScreen.builder,
        singleBatchIncomeScreen: SingleBatchIncomeScreen.builder,
        singleBatchIncomeTwoScreen: SingleBatchIncomeTwoScreen.builder,
        singleBatchIncomeThreeScreen: SingleBatchIncomeThreeScreen.builder,
        singleBatchExpensesScreen: SingleBatchExpensesScreen.builder,
        singleBatchIncomeOneScreen: SingleBatchIncomeOneScreen.builder,
        singleBatchExpensesOneScreen: SingleBatchExpensesOneScreen.builder,
        singleBatchFeedingScreen: SingleBatchFeedingScreen.builder,
        singleBatchMortalityScreen: SingleBatchMortalityScreen.builder,
        singleBatchBodyWeightScreen: SingleBatchBodyWeightScreen.builder,
        singleBatchViewVaccinationOneTabContainerScreen:
            SingleBatchViewVaccinationOneTabContainerScreen.builder,
        singleBatchVaccinationTwoScreen:
            SingleBatchVaccinationTwoScreen.builder,
        singleBatchMedicineScreen: SingleBatchMedicineScreen.builder,
        singleBatchAddNoteScreen: SingleBatchAddNoteScreen.builder,
        singleBatchEggScreen: SingleBatchEggScreen.builder,
        batchesSubUserOneScreen: BatchesSubUserOneScreen.builder,
        batchesSubUserTwoScreen: BatchesSubUserTwoScreen.builder,
        singleBatchVaccinationThreeScreen:
            SingleBatchVaccinationThreeScreen.builder,
        singleBatchVaccinationOneScreen:
            SingleBatchVaccinationOneScreen.builder,
        singleBatchVaccinationFourScreen:
            SingleBatchVaccinationFourScreen.builder,
        singleBatchVaccinationScreen: SingleBatchVaccinationScreen.builder,
        myOrdersScreen: MyOrdersScreen.builder,
        addOrderScreen: AddOrderScreen.builder,
        inventoryScreen: InventoryScreen.builder,
        inventoryAddOneScreen: InventoryAddOneScreen.builder,
        inventoryTransferOneScreen: InventoryTransferOneScreen.builder,
        inventoryTransferSixScreen: InventoryTransferSixScreen.builder,
        feedTypeThreeScreen: FeedTypeThreeScreen.builder,
        addOrderOneScreen: AddOrderOneScreen.builder,
        inventoryAddTwoScreen: InventoryAddTwoScreen.builder,
        inventoryTransferTwoScreen: InventoryTransferTwoScreen.builder,
        inventoryTransferScreen: InventoryTransferScreen.builder,
        inventoryTransferFourScreen: InventoryTransferFourScreen.builder,
        inventoryTransferFiveScreen: InventoryTransferFiveScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
