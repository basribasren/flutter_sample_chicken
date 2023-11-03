import 'bloc/single_batch_feeding_bloc.dart';
import 'models/single_batch_feeding_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleBatchFeedingScreen extends StatelessWidget {
  const SingleBatchFeedingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchFeedingBloc>(
      create: (context) => SingleBatchFeedingBloc(SingleBatchFeedingState(
        singleBatchFeedingModelObj: SingleBatchFeedingModel(),
      ))
        ..add(SingleBatchFeedingInitialEvent()),
      child: SingleBatchFeedingScreen(),
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
            vertical: 2.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_add_feed_served".tr,
                style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
              ),
              SizedBox(height: 18.v),
              _buildDate(context),
              SizedBox(height: 15.v),
              _buildMenuThirtySix(context),
              SizedBox(height: 15.v),
              _buildGroup691(context),
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
      height: 53.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 18.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_batch".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDateEditText(BuildContext context) {
    return BlocSelector<SingleBatchFeedingBloc, SingleBatchFeedingState,
        TextEditingController?>(
      selector: (state) => state.dateEditTextController,
      builder: (context, dateEditTextController) {
        return CustomTextFormField(
          width: 358.h,
          controller: dateEditTextController,
          hintText: "lbl_date".tr,
          alignment: Alignment.center,
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
  Widget _buildDate(BuildContext context) {
    return SizedBox(
      height: 58.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                bottom: 17.v,
              ),
              child: Text(
                "lbl_quantity".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
          _buildDateEditText(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMenuThirtySix(BuildContext context) {
    return BlocSelector<SingleBatchFeedingBloc, SingleBatchFeedingState,
        TextEditingController?>(
      selector: (state) => state.menuThirtySixController,
      builder: (context, menuThirtySixController) {
        return CustomTextFormField(
          controller: menuThirtySixController,
          hintText: "lbl_feed_type".tr,
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
  Widget _buildGroup691(BuildContext context) {
    return BlocSelector<SingleBatchFeedingBloc, SingleBatchFeedingState,
        TextEditingController?>(
      selector: (state) => state.group691Controller,
      builder: (context, group691Controller) {
        return CustomTextFormField(
          controller: group691Controller,
          hintText: "msg_total_feed_given".tr,
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
