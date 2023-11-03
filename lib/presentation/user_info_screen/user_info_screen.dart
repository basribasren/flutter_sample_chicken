import 'bloc/user_info_bloc.dart';import 'models/user_info_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/core/utils/validation_functions.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_elevated_button.dart';import 'package:basri_s_application4/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class UserInfoScreen extends StatelessWidget {UserInfoScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<UserInfoBloc>(create: (context) => UserInfoBloc(UserInfoState(userInfoModelObj: UserInfoModel()))..add(UserInfoInitialEvent()), child: UserInfoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), child: Column(children: [SizedBox(height: 81.v, width: 86.h, child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgProfileUser2, height: 80.adaptSize, width: 80.adaptSize, alignment: Alignment.centerLeft), CustomImageView(imagePath: ImageConstant.imgArrowDownSignToNavigate, height: 28.adaptSize, width: 28.adaptSize, alignment: Alignment.bottomRight)])), SizedBox(height: 19.v), _buildProfileUserTwoName(context), SizedBox(height: 15.v), _buildProfileUserTwoEmail(context), SizedBox(height: 15.v), _buildProfileUserTwoName1(context), SizedBox(height: 15.v), _buildCountry1(context), SizedBox(height: 15.v), _buildCity1(context), SizedBox(height: 15.v), _buildCity2(context), SizedBox(height: 15.v), _buildFarm(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSave(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 55.v, leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 20.v, bottom: 16.v), onTap: () {onTapArrowOne(context);}), title: AppbarTitle(text: "msg_user_information".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 19.v))]); } 
/// Section Widget
Widget _buildProfileUserTwoName(BuildContext context) { return BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.profileUserTwoNameController, builder: (context, profileUserTwoNameController) {return CustomTextFormField(controller: profileUserTwoNameController, hintText: "lbl_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildProfileUserTwoEmail(BuildContext context) { return BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.profileUserTwoEmailController, builder: (context, profileUserTwoEmailController) {return CustomTextFormField(controller: profileUserTwoEmailController, hintText: "lbl_email".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}); } 
/// Section Widget
Widget _buildProfileUserTwoName1(BuildContext context) { return BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.profileUserTwoNameController1, builder: (context, profileUserTwoNameController1) {return CustomTextFormField(controller: profileUserTwoNameController1, hintText: "lbl_farm_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildCountry(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.countryController, builder: (context, countryController) {return CustomTextFormField(controller: countryController, hintText: "lbl_country".tr);}))); } 
/// Section Widget
Widget _buildState(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.stateController, builder: (context, stateController) {return CustomTextFormField(controller: stateController, hintText: "lbl_state".tr);}))); } 
/// Section Widget
Widget _buildCountry1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildCountry(context), _buildState(context)]); } 
/// Section Widget
Widget _buildCity(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(right: 8.h), child: BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.cityController, builder: (context, cityController) {return CustomTextFormField(controller: cityController, hintText: "lbl_city".tr);}))); } 
/// Section Widget
Widget _buildVillage(BuildContext context) { return Expanded(child: Padding(padding: EdgeInsets.only(left: 8.h), child: BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.villageController, builder: (context, villageController) {return CustomTextFormField(controller: villageController, hintText: "lbl_village".tr);}))); } 
/// Section Widget
Widget _buildCity1(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildCity(context), _buildVillage(context)]); } 
/// Section Widget
Widget _buildCity2(BuildContext context) { return BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.cityController1, builder: (context, cityController1) {return CustomTextFormField(controller: cityController1, hintText: "lbl_farm_capacity".tr);}); } 
/// Section Widget
Widget _buildFarm(BuildContext context) { return BlocSelector<UserInfoBloc, UserInfoState, TextEditingController?>(selector: (state) => state.farmController, builder: (context, farmController) {return CustomTextFormField(controller: farmController, hintText: "lbl_farm".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 22.v, 21.h, 21.v), child: CustomImageView(imagePath: ImageConstant.imgMenu136, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.only(left: 17.h, top: 20.v, bottom: 20.v));}); } 
/// Section Widget
Widget _buildSave(BuildContext context) { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 17.h, right: 17.h, bottom: 26.v), onPressed: () {onTapSave(context);}); } 
/// Navigates to the farmSettingsScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.farmSettingsScreen, ); } 
/// Navigates to the farmSettingsScreen when the action is triggered.
onTapSave(BuildContext context) { NavigatorService.pushNamed(AppRoutes.farmSettingsScreen, ); } 
 }
