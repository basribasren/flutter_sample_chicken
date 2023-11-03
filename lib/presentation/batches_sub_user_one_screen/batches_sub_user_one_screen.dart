import 'bloc/batches_sub_user_one_bloc.dart';
import 'models/batches_sub_user_one_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/core/utils/validation_functions.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class BatchesSubUserOneScreen extends StatelessWidget {
  BatchesSubUserOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<BatchesSubUserOneBloc>(
      create: (context) => BatchesSubUserOneBloc(BatchesSubUserOneState(
        batchesSubUserOneModelObj: BatchesSubUserOneModel(),
      ))
        ..add(BatchesSubUserOneInitialEvent()),
      child: BatchesSubUserOneScreen(),
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
              vertical: 2.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_add_sub_user".tr,
                  style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
                ),
                SizedBox(height: 30.v),
                CustomImageView(
                  imagePath: ImageConstant.imgProfileUser2,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 132.h),
                ),
                SizedBox(height: 30.v),
                _buildName(context),
                SizedBox(height: 15.v),
                _buildMobileNumber(context),
                SizedBox(height: 15.v),
                _buildViewOnly(context),
                SizedBox(height: 5.v),
              ],
            ),
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
  Widget _buildName(BuildContext context) {
    return BlocSelector<BatchesSubUserOneBloc, BatchesSubUserOneState,
        TextEditingController?>(
      selector: (state) => state.nameController,
      builder: (context, nameController) {
        return CustomTextFormField(
          controller: nameController,
          hintText: "lbl_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return BlocSelector<BatchesSubUserOneBloc, BatchesSubUserOneState,
        TextEditingController?>(
      selector: (state) => state.mobileNumberController,
      builder: (context, mobileNumberController) {
        return CustomTextFormField(
          controller: mobileNumberController,
          hintText: "msg_search_by_mobile".tr,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildViewOnly(BuildContext context) {
    return BlocSelector<BatchesSubUserOneBloc, BatchesSubUserOneState,
        TextEditingController?>(
      selector: (state) => state.viewOnlyController,
      builder: (context, viewOnlyController) {
        return CustomTextFormField(
          controller: viewOnlyController,
          hintText: "lbl_view_only".tr,
          textInputAction: TextInputAction.done,
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
  Widget _buildAdd(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 29.v,
      ),
    );
  }
}
