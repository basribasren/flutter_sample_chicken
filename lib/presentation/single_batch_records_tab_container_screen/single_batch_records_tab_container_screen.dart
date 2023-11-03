import 'bloc/single_batch_records_tab_container_bloc.dart';import 'models/single_batch_records_tab_container_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_analysis_page/single_batch_analysis_page.dart';import 'package:basri_s_application4/presentation/single_batch_records_page/single_batch_records_page.dart';import 'package:basri_s_application4/presentation/single_batch_reports_one_page/single_batch_reports_one_page.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class SingleBatchRecordsTabContainerScreen extends StatefulWidget {const SingleBatchRecordsTabContainerScreen({Key? key}) : super(key: key);

@override SingleBatchRecordsTabContainerScreenState createState() =>  SingleBatchRecordsTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<SingleBatchRecordsTabContainerBloc>(create: (context) => SingleBatchRecordsTabContainerBloc(SingleBatchRecordsTabContainerState(singleBatchRecordsTabContainerModelObj: SingleBatchRecordsTabContainerModel()))..add(SingleBatchRecordsTabContainerInitialEvent()), child: SingleBatchRecordsTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class SingleBatchRecordsTabContainerScreenState extends State<SingleBatchRecordsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SingleBatchRecordsTabContainerBloc, SingleBatchRecordsTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 16.v), child: Column(children: [_buildBatchName(context), SizedBox(height: 21.v), _buildTabview(context), SizedBox(height: 698.v, child: TabBarView(controller: tabviewController, children: [SingleBatchRecordsPage.builder(context), SingleBatchAnalysisPage.builder(context), SingleBatchReportsOnePage.builder(context)]))])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 49.v, leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 18.v, bottom: 12.v), onTap: () {onTapArrowOne(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildBatchName(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v), decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("lbl_batch_name2".tr, style: CustomTextStyles.titleMediumSemiBold)), Spacer(), CustomImageView(imagePath: ImageConstant.imgAddUser1, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(top: 1.v, bottom: 6.v), onTap: () {onTapImgAddUserOne(context);}), CustomImageView(imagePath: ImageConstant.imgEditing1, height: 22.adaptSize, width: 22.adaptSize, margin: EdgeInsets.only(left: 27.h, top: 1.v, bottom: 6.v), onTap: () {onTapImgEditingOne(context);}), CustomImageView(imagePath: ImageConstant.imgGridiconsCross, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 20.h, bottom: 5.v))])), SizedBox(height: 6.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 10.h), child: Text("lbl_6_weeks_5_days".tr, style: CustomTextStyles.bodyMedium14))), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 9.h, right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_total_chicks_1100".tr, style: CustomTextStyles.bodySmallBluegray40001), Text("lbl_sold_1000".tr, style: CustomTextStyles.bodySmallBluegray40001), Text("lbl_mortality_0".tr, style: CustomTextStyles.bodySmallBluegray40001), Text("lbl_live_100".tr, style: CustomTextStyles.bodySmallBluegray40001)])), SizedBox(height: 2.v)])); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 40.v, width: 359.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Bahnschrift', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.blueGray40001, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Bahnschrift', fontWeight: FontWeight.w600), indicator: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(10.h)), tabs: [Tab(child: Text("lbl_records".tr)), Tab(child: Text("lbl_analysis".tr)), Tab(child: Text("lbl_reports".tr))])); } 
/// Navigates to the batchesTabContainerScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.batchesTabContainerScreen, ); } 
/// Navigates to the newSubUserScreen when the action is triggered.
onTapImgAddUserOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.newSubUserScreen, ); } 
/// Navigates to the editBatchScreen when the action is triggered.
onTapImgEditingOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.editBatchScreen, ); } 
 }
