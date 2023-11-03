import 'bloc/my_ads_one_bloc.dart';import 'models/my_ads_one_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:basri_s_application4/presentation/homepage_sell_two_dialog/homepage_sell_two_dialog.dart';class MyAdsOneScreen extends StatelessWidget {const MyAdsOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MyAdsOneBloc>(create: (context) => MyAdsOneBloc(MyAdsOneState(myAdsOneModelObj: MyAdsOneModel()))..add(MyAdsOneInitialEvent()), child: MyAdsOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<MyAdsOneBloc, MyAdsOneState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Text("lbl_broiler".tr, style: CustomTextStyles.titleLargePoppinsBlack900)), SizedBox(height: 20.v), CustomImageView(imagePath: ImageConstant.imgPremiumPhoto1, height: 127.v, width: 357.h, radius: BorderRadius.circular(15.h), margin: EdgeInsets.only(left: 1.h)), SizedBox(height: 30.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_category".tr, style: CustomTextStyles.titleSmall15_1)), SizedBox(height: 28.v), Container(width: 339.h, margin: EdgeInsets.only(left: 1.h, right: 18.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_description".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: " \n".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2), TextSpan(text: "msg_lorem_ipsum_dolor".tr, style: CustomTextStyles.bodyMediumPoppinsBlack90013)]), textAlign: TextAlign.left)), SizedBox(height: 26.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_quantity3".tr, style: CustomTextStyles.titleSmall15_1)), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_contact_number".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: "lbl_91_9556781395".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2)]), textAlign: TextAlign.left)), SizedBox(height: 29.v), Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_state2".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: "lbl_maharashtra".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2)]), textAlign: TextAlign.left)), SizedBox(height: 31.v), Padding(padding: EdgeInsets.only(left: 1.h, right: 94.h), child: Row(children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_city2".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: "lbl_pune".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2)]), textAlign: TextAlign.left), Padding(padding: EdgeInsets.only(left: 93.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_village2".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: "lbl_akluj".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2)]), textAlign: TextAlign.left))])), SizedBox(height: 27.v), Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_ad_posted_on".tr, style: CustomTextStyles.titleSmall15), TextSpan(text: "lbl_15_12_2022".tr, style: CustomTextStyles.bodyMediumPoppinsBlack900_2)]), textAlign: TextAlign.left)), SizedBox(height: 5.v)])), bottomNavigationBar: _buildCallSeller(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 54.v, leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 16.v), onTap: () {onTapArrowOne(context);}), title: AppbarTitle(text: "lbl_recommendations".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v))]); } 
/// Section Widget
Widget _buildCallSeller(BuildContext context) { return CustomElevatedButton(text: "lbl_call_seller".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 22.v), onPressed: () {onTapCallSeller(context);}); } 
/// Navigates to the homepageServiceBuyOneScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homepageServiceBuyOneScreen, ); } 

/// Displays a dialog with the [HomepageSellTwoDialog] content.
onTapCallSeller(BuildContext context) { showDialog(context: context, builder: (_) => AlertDialog(content: HomepageSellTwoDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
 }
