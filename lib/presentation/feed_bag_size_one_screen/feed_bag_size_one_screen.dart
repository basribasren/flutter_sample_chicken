import 'bloc/feed_bag_size_one_bloc.dart';import 'models/feed_bag_size_one_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/presentation/homepage_service_buy_page/homepage_service_buy_page.dart';import 'package:basri_s_application4/presentation/income_one_page/income_one_page.dart';import 'package:basri_s_application4/presentation/new_order_tab_container_page/new_order_tab_container_page.dart';import 'package:basri_s_application4/presentation/single_batch_view_income_page/single_batch_view_income_page.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_bottom_bar.dart';import 'package:basri_s_application4/widgets/custom_floating_button.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class FeedBagSizeOneScreen extends StatelessWidget {FeedBagSizeOneScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<FeedBagSizeOneBloc>(create: (context) => FeedBagSizeOneBloc(FeedBagSizeOneState(feedBagSizeOneModelObj: FeedBagSizeOneModel()))..add(FeedBagSizeOneInitialEvent()), child: FeedBagSizeOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<FeedBagSizeOneBloc, FeedBagSizeOneState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 27.v), _buildFeedBagSizeOne(context), Spacer()])), bottomNavigationBar: _buildBottomBar(context), floatingActionButton: _buildFloatingActionButton(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowOne(context);}), title: AppbarTitle(text: "lbl_feed_bag_size".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 21.v))]); } 
/// Section Widget
Widget _buildFeedBagSizeOne(BuildContext context) { return Column(children: [Divider(), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_50_kg".tr, style: CustomTextStyles.titleMedium17))), SizedBox(height: 13.v), _buildVectorThirtyNine(context), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_40_kg".tr, style: CustomTextStyles.titleMedium17))), SizedBox(height: 13.v), _buildVectorThirtyNine(context), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_30_kg".tr, style: CustomTextStyles.titleMedium17))), SizedBox(height: 14.v), _buildVectorThirtyNine(context)]); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
/// Section Widget
Widget _buildFloatingActionButton(BuildContext context) { return CustomFloatingButton(height: 60, width: 60, backgroundColor: theme.colorScheme.primary, child: CustomImageView(imagePath: ImageConstant.imgMaterialSymbolsAdd, height: 30.0.v, width: 30.0.h)); } 
/// Common widget
Widget _buildVectorThirtyNine(BuildContext context) { return SizedBox(height: 1.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Divider())), Align(alignment: Alignment.center, child: SizedBox(width: double.maxFinite, child: Divider()))])); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Buysell: return AppRoutes.homepageServiceBuyPage; case BottomBarEnum.Batches: return AppRoutes.singleBatchViewIncomePage; case BottomBarEnum.Feedmanagement: return AppRoutes.newOrderTabContainerPage; case BottomBarEnum.Farmsettings: return AppRoutes.incomeOnePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homepageServiceBuyPage: return HomepageServiceBuyPage.builder(context); case AppRoutes.singleBatchViewIncomePage: return SingleBatchViewIncomePage.builder(context); case AppRoutes.newOrderTabContainerPage: return NewOrderTabContainerPage.builder(context); case AppRoutes.incomeOnePage: return IncomeOnePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the farmSettingsScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.farmSettingsScreen, ); } 
 }
