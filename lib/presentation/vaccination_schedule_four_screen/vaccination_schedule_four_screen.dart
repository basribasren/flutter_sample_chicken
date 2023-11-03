import 'bloc/vaccination_schedule_four_bloc.dart';
import 'models/vaccination_schedule_four_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class VaccinationScheduleFourScreen extends StatelessWidget {
  const VaccinationScheduleFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VaccinationScheduleFourBloc>(
      create: (context) =>
          VaccinationScheduleFourBloc(VaccinationScheduleFourState(
        vaccinationScheduleFourModelObj: VaccinationScheduleFourModel(),
      ))
            ..add(VaccinationScheduleFourInitialEvent()),
      child: VaccinationScheduleFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildMenuForty(context),
              SizedBox(height: 15.v),
              _buildDay(context),
              SizedBox(height: 15.v),
              _buildMenuThirtySeven(context),
              SizedBox(height: 15.v),
              _buildMenuThirtyEight(context),
              SizedBox(height: 15.v),
              _buildMenuThirtyNine(context),
              SizedBox(height: 15.v),
              _buildDescription(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAdd(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_add_vaccination".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMenuForty(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
      selector: (state) => state.menuFortyController,
      builder: (context, menuFortyController) {
        return CustomTextFormField(
          controller: menuFortyController,
          hintText: "lbl_breed".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 21.v, 22.h, 21.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgMenu136,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 21.h,
            top: 19.v,
            bottom: 19.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDay(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
      selector: (state) => state.dayController,
      builder: (context, dayController) {
        return CustomTextFormField(
          controller: dayController,
          hintText: "lbl_day".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMenuThirtySeven(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
      selector: (state) => state.menuThirtySevenController,
      builder: (context, menuThirtySevenController) {
        return CustomTextFormField(
          controller: menuThirtySevenController,
          hintText: "lbl_vaccine".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 23.v, 22.h, 20.v),
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
            left: 21.h,
            top: 20.v,
            bottom: 20.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMenuThirtyEight(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
      selector: (state) => state.menuThirtyEightController,
      builder: (context, menuThirtyEightController) {
        return CustomTextFormField(
          controller: menuThirtyEightController,
          hintText: "lbl_vaccine_type2".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 23.v, 22.h, 19.v),
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
            left: 21.h,
            top: 20.v,
            bottom: 20.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMenuThirtyNine(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
      selector: (state) => state.menuThirtyNineController,
      builder: (context, menuThirtyNineController) {
        return CustomTextFormField(
          controller: menuThirtyNineController,
          hintText: "lbl_method2".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 22.v, 22.h, 21.v),
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
            left: 21.h,
            top: 20.v,
            bottom: 20.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDescription(BuildContext context) {
    return BlocSelector<VaccinationScheduleFourBloc,
        VaccinationScheduleFourState, TextEditingController?>(
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
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 30.v,
      ),
    );
  }
}
