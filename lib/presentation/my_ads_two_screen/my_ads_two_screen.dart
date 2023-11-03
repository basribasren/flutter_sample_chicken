import 'bloc/my_ads_two_bloc.dart';
import 'models/my_ads_two_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/core/utils/validation_functions.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_outlined_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MyAdsTwoScreen extends StatelessWidget {
  MyAdsTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyAdsTwoBloc>(
      create: (context) => MyAdsTwoBloc(MyAdsTwoState(
        myAdsTwoModelObj: MyAdsTwoModel(),
      ))
        ..add(MyAdsTwoInitialEvent()),
      child: MyAdsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            child: Column(
              children: [
                _buildBroiler(context),
                SizedBox(height: 23.v),
                _buildMask(context),
                SizedBox(height: 27.v),
                _buildCategory(context),
                SizedBox(height: 15.v),
                _buildQuantity(context),
                SizedBox(height: 15.v),
                _buildContactNumber(context),
                SizedBox(height: 15.v),
                _buildState(context),
                SizedBox(height: 15.v),
                _buildCity1(context),
                SizedBox(height: 15.v),
                _buildDescription(context),
                SizedBox(height: 16.v),
                _buildSold1(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 18.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_my_ads".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 21.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBroiler(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_broiler".tr,
            style: CustomTextStyles.titleMediumSemiBold_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDelete1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMask(BuildContext context) {
    return SizedBox(
      height: 127.v,
      width: 357.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPremiumPhoto1,
            height: 127.v,
            width: 357.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMdiPencil,
            height: 20.adaptSize,
            width: 20.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 12.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory(BuildContext context) {
    return BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
      selector: (state) => state.categoryController,
      builder: (context, categoryController) {
        return CustomTextFormField(
          controller: categoryController,
          hintText: "lbl_category2".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 21.v, 21.h, 22.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgMenu136,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 59.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 19.h,
            top: 20.v,
            bottom: 20.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildQuantity(BuildContext context) {
    return BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
      selector: (state) => state.quantityController,
      builder: (context, quantityController) {
        return CustomTextFormField(
          controller: quantityController,
          hintText: "lbl_quantity".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContactNumber(BuildContext context) {
    return BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
      selector: (state) => state.contactNumberController,
      builder: (context, contactNumberController) {
        return CustomTextFormField(
          controller: contactNumberController,
          hintText: "lbl_contact_number2".tr,
          textInputType: TextInputType.number,
          validator: (value) {
            if (!isNumeric(value)) {
              return "err_msg_please_enter_valid_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildState(BuildContext context) {
    return BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
      selector: (state) => state.stateController,
      builder: (context, stateController) {
        return CustomTextFormField(
          controller: stateController,
          hintText: "lbl_state".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCity(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child:
            BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
          selector: (state) => state.cityController,
          builder: (context, cityController) {
            return CustomTextFormField(
              controller: cityController,
              hintText: "lbl_city".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVillage(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
          selector: (state) => state.villageController,
          builder: (context, villageController) {
            return CustomTextFormField(
              controller: villageController,
              hintText: "lbl_village".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCity1(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCity(context),
        _buildVillage(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return BlocSelector<MyAdsTwoBloc, MyAdsTwoState, TextEditingController?>(
      selector: (state) => state.descriptionController,
      builder: (context, descriptionController) {
        return CustomTextFormField(
          controller: descriptionController,
          hintText: "lbl_description2".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSold(BuildContext context) {
    return CustomOutlinedButton(
      width: 120.h,
      text: "lbl_sold".tr,
      buttonStyle: CustomButtonStyles.outlineGreen,
      buttonTextStyle: CustomTextStyles.bodyMediumGreen600,
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(
      width: 120.h,
      text: "lbl_cancel".tr,
      margin: EdgeInsets.only(left: 21.h),
      buttonStyle: CustomButtonStyles.outlineRed,
      buttonTextStyle: CustomTextStyles.bodyMediumRed500,
    );
  }

  /// Section Widget
  Widget _buildSold1(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 19.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 11.v,
                bottom: 9.v,
              ),
              child: Text(
                "lbl_status".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Spacer(),
            _buildSold(context),
            _buildCancel(context),
          ],
        ),
      ),
    );
  }
}
