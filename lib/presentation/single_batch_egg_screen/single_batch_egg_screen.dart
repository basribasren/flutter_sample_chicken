import 'bloc/single_batch_egg_bloc.dart';
import 'models/single_batch_egg_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleBatchEggScreen extends StatelessWidget {
  const SingleBatchEggScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchEggBloc>(
      create: (context) => SingleBatchEggBloc(SingleBatchEggState(
        singleBatchEggModelObj: SingleBatchEggModel(),
      ))
        ..add(SingleBatchEggInitialEvent()),
      child: SingleBatchEggScreen(),
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
            vertical: 5.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_add_eggs".tr,
                style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
              ),
              SizedBox(height: 15.v),
              _buildDateStack(context),
              SizedBox(height: 15.v),
              _buildEggTrayCollectionEditText(context),
              SizedBox(height: 15.v),
              _buildPulletEggsEditText(context),
              SizedBox(height: 15.v),
              _buildBrokenEggsEditText(context),
              SizedBox(height: 15.v),
              _buildDescriptionEditText(context),
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
        margin: EdgeInsets.only(left: 31.h),
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
    return BlocSelector<SingleBatchEggBloc, SingleBatchEggState,
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
  Widget _buildDateStack(BuildContext context) {
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
  Widget _buildEggTrayCollectionEditText(BuildContext context) {
    return BlocSelector<SingleBatchEggBloc, SingleBatchEggState,
        TextEditingController?>(
      selector: (state) => state.eggTrayCollectionEditTextController,
      builder: (context, eggTrayCollectionEditTextController) {
        return CustomTextFormField(
          controller: eggTrayCollectionEditTextController,
          hintText: "msg_egg_tray_collection2".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPulletEggsEditText(BuildContext context) {
    return BlocSelector<SingleBatchEggBloc, SingleBatchEggState,
        TextEditingController?>(
      selector: (state) => state.pulletEggsEditTextController,
      builder: (context, pulletEggsEditTextController) {
        return CustomTextFormField(
          controller: pulletEggsEditTextController,
          hintText: "lbl_pullet_eggs".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBrokenEggsEditText(BuildContext context) {
    return BlocSelector<SingleBatchEggBloc, SingleBatchEggState,
        TextEditingController?>(
      selector: (state) => state.brokenEggsEditTextController,
      builder: (context, brokenEggsEditTextController) {
        return CustomTextFormField(
          controller: brokenEggsEditTextController,
          hintText: "lbl_broken_eggs".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDescriptionEditText(BuildContext context) {
    return BlocSelector<SingleBatchEggBloc, SingleBatchEggState,
        TextEditingController?>(
      selector: (state) => state.descriptionEditTextController,
      builder: (context, descriptionEditTextController) {
        return CustomTextFormField(
          controller: descriptionEditTextController,
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
