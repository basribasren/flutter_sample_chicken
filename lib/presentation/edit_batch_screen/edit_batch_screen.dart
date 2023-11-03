import 'bloc/edit_batch_bloc.dart';import 'models/edit_batch_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/core/utils/validation_functions.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_elevated_button.dart';import 'package:basri_s_application4/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class EditBatchScreen extends StatelessWidget {EditBatchScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<EditBatchBloc>(create: (context) => EditBatchBloc(EditBatchState(editBatchModelObj: EditBatchModel()))..add(EditBatchInitialEvent()), child: EditBatchScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v), child: Column(children: [_buildEditBatchDate(context), SizedBox(height: 15.v), _buildEditBatchName(context), SizedBox(height: 15.v), _buildEditBatchBreed(context), SizedBox(height: 14.v), _buildEditBatchNumberOfBirds(context), SizedBox(height: 15.v), _buildEditBatchCostPerBird(context), SizedBox(height: 15.v), _buildEditBatchSupplier(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSaveButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 55.v, leadingWidth: 42.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 24.h, top: 20.v, bottom: 16.v), onTap: () {onTapArrowOne(context);}), title: AppbarTitle(text: "lbl_edit_batch".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 19.v))]); } 
/// Section Widget
Widget _buildEditBatchDate(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchDateController, builder: (context, editBatchDateController) {return CustomTextFormField(controller: editBatchDateController, hintText: "lbl_date".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 21.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 18.v, width: 16.h)), suffixConstraints: BoxConstraints(maxHeight: 58.v), contentPadding: EdgeInsets.only(left: 21.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildEditBatchName(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchNameController, builder: (context, editBatchNameController) {return CustomTextFormField(controller: editBatchNameController, hintText: "lbl_batch_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildEditBatchBreed(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchBreedController, builder: (context, editBatchBreedController) {return CustomTextFormField(controller: editBatchBreedController, hintText: "lbl_breed".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 21.v, 22.h, 21.v), child: CustomImageView(imagePath: ImageConstant.imgMenu136, height: 16.adaptSize, width: 16.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 59.v), contentPadding: EdgeInsets.only(left: 21.h, top: 20.v, bottom: 20.v));}); } 
/// Section Widget
Widget _buildEditBatchNumberOfBirds(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchNumberOfBirdsController, builder: (context, editBatchNumberOfBirdsController) {return CustomTextFormField(controller: editBatchNumberOfBirdsController, hintText: "lbl_number_of_birds".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});}); } 
/// Section Widget
Widget _buildEditBatchCostPerBird(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchCostPerBirdController, builder: (context, editBatchCostPerBirdController) {return CustomTextFormField(controller: editBatchCostPerBirdController, hintText: "lbl_cost_per_bird".tr);}); } 
/// Section Widget
Widget _buildEditBatchSupplier(BuildContext context) { return BlocSelector<EditBatchBloc, EditBatchState, TextEditingController?>(selector: (state) => state.editBatchSupplierController, builder: (context, editBatchSupplierController) {return CustomTextFormField(controller: editBatchSupplierController, hintText: "lbl_supplier".tr, textInputAction: TextInputAction.done);}); } 
/// Section Widget
Widget _buildSaveButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 30.v), onPressed: () {onTapSaveButton(context);}); } 
/// Navigates to the singleBatchRecordsTabContainerScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.singleBatchRecordsTabContainerScreen, ); } 
/// Navigates to the singleBatchRecordsTabContainerScreen when the action is triggered.
onTapSaveButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.singleBatchRecordsTabContainerScreen, ); } 
 }
