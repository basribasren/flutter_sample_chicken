import 'bloc/reminders_two_bloc.dart';
import 'models/reminders_two_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RemindersTwoScreen extends StatelessWidget {
  const RemindersTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RemindersTwoBloc>(
      create: (context) => RemindersTwoBloc(RemindersTwoState(
        remindersTwoModelObj: RemindersTwoModel(),
      ))
        ..add(RemindersTwoInitialEvent()),
      child: RemindersTwoScreen(),
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
              _buildRemindersTwo(context),
              SizedBox(height: 15.v),
              _buildRemindersTwo1(context),
              SizedBox(height: 15.v),
              _buildRemindersTwo2(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddButton(context),
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
        text: "lbl_add_reminder".tr,
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
  Widget _buildRemindersTwo(BuildContext context) {
    return BlocSelector<RemindersTwoBloc, RemindersTwoState,
        TextEditingController?>(
      selector: (state) => state.remindersTwoController,
      builder: (context, remindersTwoController) {
        return CustomTextFormField(
          controller: remindersTwoController,
          hintText: "lbl_date".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 19.v, 21.h, 19.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 18.v,
              width: 16.h,
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
  Widget _buildRemindersTwo1(BuildContext context) {
    return BlocSelector<RemindersTwoBloc, RemindersTwoState,
        TextEditingController?>(
      selector: (state) => state.remindersTwoController1,
      builder: (context, remindersTwoController1) {
        return CustomTextFormField(
          controller: remindersTwoController1,
          hintText: "lbl_reminder".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRemindersTwo2(BuildContext context) {
    return BlocSelector<RemindersTwoBloc, RemindersTwoState,
        TextEditingController?>(
      selector: (state) => state.remindersTwoController2,
      builder: (context, remindersTwoController2) {
        return CustomTextFormField(
          controller: remindersTwoController2,
          hintText: "lbl_description2".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddButton(BuildContext context) {
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
