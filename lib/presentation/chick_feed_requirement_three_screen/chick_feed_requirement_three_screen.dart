import 'bloc/chick_feed_requirement_three_bloc.dart';
import 'models/chick_feed_requirement_three_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChickFeedRequirementThreeScreen extends StatelessWidget {
  const ChickFeedRequirementThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChickFeedRequirementThreeBloc>(
      create: (context) =>
          ChickFeedRequirementThreeBloc(ChickFeedRequirementThreeState(
        chickFeedRequirementThreeModelObj: ChickFeedRequirementThreeModel(),
      ))
            ..add(ChickFeedRequirementThreeInitialEvent()),
      child: ChickFeedRequirementThreeScreen(),
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
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              _buildChickFeedRequirementDay(context),
              SizedBox(height: 15.v),
              _buildChickFeedRequirementBreed(context),
              SizedBox(height: 15.v),
              _buildChickFeedRequirementFeedType(context),
              SizedBox(height: 15.v),
              _buildChickFeedRequirementGrams(context),
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
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_chick_feed_requirement".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChickFeedRequirementDay(BuildContext context) {
    return BlocSelector<ChickFeedRequirementThreeBloc,
        ChickFeedRequirementThreeState, TextEditingController?>(
      selector: (state) => state.chickFeedRequirementDayController,
      builder: (context, chickFeedRequirementDayController) {
        return CustomTextFormField(
          controller: chickFeedRequirementDayController,
          hintText: "lbl_day".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChickFeedRequirementBreed(BuildContext context) {
    return BlocSelector<ChickFeedRequirementThreeBloc,
        ChickFeedRequirementThreeState, TextEditingController?>(
      selector: (state) => state.chickFeedRequirementBreedController,
      builder: (context, chickFeedRequirementBreedController) {
        return CustomTextFormField(
          controller: chickFeedRequirementBreedController,
          hintText: "lbl_breed".tr,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 21.v, 22.h, 22.v),
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
  Widget _buildChickFeedRequirementFeedType(BuildContext context) {
    return BlocSelector<ChickFeedRequirementThreeBloc,
        ChickFeedRequirementThreeState, TextEditingController?>(
      selector: (state) => state.chickFeedRequirementFeedTypeController,
      builder: (context, chickFeedRequirementFeedTypeController) {
        return CustomTextFormField(
          controller: chickFeedRequirementFeedTypeController,
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
  Widget _buildChickFeedRequirementGrams(BuildContext context) {
    return BlocSelector<ChickFeedRequirementThreeBloc,
        ChickFeedRequirementThreeState, TextEditingController?>(
      selector: (state) => state.chickFeedRequirementGramsController,
      builder: (context, chickFeedRequirementGramsController) {
        return CustomTextFormField(
          controller: chickFeedRequirementGramsController,
          hintText: "lbl_grams".tr,
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
