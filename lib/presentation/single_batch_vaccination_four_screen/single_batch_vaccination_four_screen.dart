import 'bloc/single_batch_vaccination_four_bloc.dart';import 'models/single_batch_vaccination_four_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_elevated_button.dart';import 'package:basri_s_application4/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class SingleBatchVaccinationFourScreen extends StatelessWidget {const SingleBatchVaccinationFourScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SingleBatchVaccinationFourBloc>(create: (context) => SingleBatchVaccinationFourBloc(SingleBatchVaccinationFourState(singleBatchVaccinationFourModelObj: SingleBatchVaccinationFourModel()))..add(SingleBatchVaccinationFourInitialEvent()), child: SingleBatchVaccinationFourScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 1.v), child: Column(children: [Text("lbl_add_vaccination".tr, style: CustomTextStyles.titleLargePoppinsBlack900SemiBold), SizedBox(height: 19.v), _buildAddVaccinationDate(context), SizedBox(height: 15.v), _buildAddVaccinationMenuThirtySeven(context), SizedBox(height: 15.v), _buildGroup1028(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildAdd(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 18.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_batch".tr, margin: EdgeInsets.only(left: 31.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 17.v))]); } 
/// Section Widget
Widget _buildAddVaccinationDate(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationDateController, builder: (context, addVaccinationDateController) {return CustomTextFormField(controller: addVaccinationDateController, hintText: "lbl_date".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 21.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 18.v, width: 16.h)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.only(left: 21.h, top: 20.v, bottom: 20.v));}); } 
/// Section Widget
Widget _buildAddVaccinationMenuThirtySeven(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationMenuThirtySevenController, builder: (context, addVaccinationMenuThirtySevenController) {return CustomTextFormField(controller: addVaccinationMenuThirtySevenController, hintText: "lbl_vaccine".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 23.v, 22.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgMenu136, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.only(left: 21.h, top: 20.v, bottom: 20.v));}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1028(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1028Controller, builder: (context, addVaccinationGroup1028Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1028Controller, hintText: "msg_newcastle_disease".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1034(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1034Controller, builder: (context, addVaccinationGroup1034Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1034Controller, hintText: "msg_newcastle_disease2".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1038(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1038Controller, builder: (context, addVaccinationGroup1038Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1038Controller, hintText: "msg_newcastle_disease3".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationFowPox(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationFowPoxController, builder: (context, addVaccinationFowPoxController) {return CustomTextFormField(width: 236.h, controller: addVaccinationFowPoxController, hintText: "lbl_fow_pox".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1036(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1036Controller, builder: (context, addVaccinationGroup1036Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1036Controller, hintText: "msg_avian_infectious".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1040(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1040Controller, builder: (context, addVaccinationGroup1040Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1040Controller, hintText: "msg_massachusetts_type".tr, contentPadding: EdgeInsets.symmetric(horizontal: 12.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildAddVaccinationGroup1032(BuildContext context) { return BlocSelector<SingleBatchVaccinationFourBloc, SingleBatchVaccinationFourState, TextEditingController?>(selector: (state) => state.addVaccinationGroup1032Controller, builder: (context, addVaccinationGroup1032Controller) {return CustomTextFormField(width: 236.h, controller: addVaccinationGroup1032Controller, hintText: "msg_infectious_bursal".tr, textInputAction: TextInputAction.done, contentPadding: EdgeInsets.symmetric(horizontal: 7.h), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildGroup1028(BuildContext context) { return SizedBox(height: 284.v, width: 358.h, child: Stack(alignment: Alignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 225.v), child: _buildMethod(context, methodText: "lbl_vaccine_type2".tr, menuImage: ImageConstant.imgMenu138, onTapMenu: () {onTapMenu(context);})), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildMethod(context, methodText: "lbl_method2".tr, menuImage: ImageConstant.imgMenu136), SizedBox(height: 15.v), Container(width: 358.h, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 4.v), Text("lbl_description2".tr, style: theme.textTheme.bodyMedium)]))])), Align(alignment: Alignment.bottomRight, child: Container(height: 241.v, width: 236.h, margin: EdgeInsets.only(right: 12.h), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgPolygon1, height: 14.v, width: 24.h, alignment: Alignment.topRight, margin: EdgeInsets.only(right: 7.h)), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(vertical: 5.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), _buildAddVaccinationGroup1028(context), SizedBox(height: 5.v), _buildAddVaccinationGroup1034(context), SizedBox(height: 4.v), _buildAddVaccinationGroup1038(context), SizedBox(height: 4.v), _buildAddVaccinationFowPox(context), SizedBox(height: 8.v), _buildAddVaccinationGroup1036(context), SizedBox(height: 7.v), _buildAddVaccinationGroup1040(context), SizedBox(height: 6.v), _buildAddVaccinationGroup1032(context), SizedBox(height: 6.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_newcastle_disease".tr, style: CustomTextStyles.bodySmall12)))])))])))])); } 
/// Section Widget
Widget _buildAdd(BuildContext context) { return CustomElevatedButton(text: "lbl_add".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 30.v)); } 
/// Common widget
Widget _buildMethod(BuildContext context, {required String methodText, required String menuImage, Function? onTapMenu, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Text(methodText, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.blueGray40001))), CustomImageView(imagePath: menuImage, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 1.v, right: 1.h, bottom: 2.v), onTap: () {onTapMenu!.call();})])); } 
/// Navigates to the singleBatchVaccinationTwoScreen when the action is triggered.
onTapMenu(BuildContext context) { NavigatorService.pushNamed(AppRoutes.singleBatchVaccinationTwoScreen, ); } 
 }
