import 'bloc/homepage_service_buy_container_bloc.dart';import 'models/homepage_service_buy_container_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/presentation/homepage_service_buy_page/homepage_service_buy_page.dart';import 'package:basri_s_application4/presentation/income_one_page/income_one_page.dart';import 'package:basri_s_application4/presentation/new_order_tab_container_page/new_order_tab_container_page.dart';import 'package:basri_s_application4/presentation/single_batch_view_income_page/single_batch_view_income_page.dart';import 'package:basri_s_application4/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class HomepageServiceBuyContainerScreen extends StatelessWidget {HomepageServiceBuyContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomepageServiceBuyContainerBloc>(create: (context) => HomepageServiceBuyContainerBloc(HomepageServiceBuyContainerState(homepageServiceBuyContainerModelObj: HomepageServiceBuyContainerModel()))..add(HomepageServiceBuyContainerInitialEvent()), child: HomepageServiceBuyContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomepageServiceBuyContainerBloc, HomepageServiceBuyContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homepageServiceBuyPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Buysell: return AppRoutes.homepageServiceBuyPage; case BottomBarEnum.Batches: return AppRoutes.singleBatchViewIncomePage; case BottomBarEnum.Feedmanagement: return AppRoutes.newOrderTabContainerPage; case BottomBarEnum.Farmsettings: return AppRoutes.incomeOnePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepageServiceBuyPage: return HomepageServiceBuyPage.builder(context); case AppRoutes.singleBatchViewIncomePage: return SingleBatchViewIncomePage.builder(context); case AppRoutes.newOrderTabContainerPage: return NewOrderTabContainerPage.builder(context); case AppRoutes.incomeOnePage: return IncomeOnePage.builder(context); default: return DefaultWidget();} } 
 }
