import 'bloc/single_batch_body_weight_bloc.dart';
import 'models/single_batch_body_weight_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleBatchBodyWeightScreen extends StatelessWidget {
  const SingleBatchBodyWeightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchBodyWeightBloc>(
      create: (context) => SingleBatchBodyWeightBloc(SingleBatchBodyWeightState(
        singleBatchBodyWeightModelObj: SingleBatchBodyWeightModel(),
      ))
        ..add(SingleBatchBodyWeightInitialEvent()),
      child: SingleBatchBodyWeightScreen(),
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
            vertical: 4.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_add_body_weight".tr,
                style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
              ),
              SizedBox(height: 16.v),
              _buildQuantity(context),
              SizedBox(height: 15.v),
              BlocSelector<SingleBatchBodyWeightBloc,
                  SingleBatchBodyWeightState, TextEditingController?>(
                selector: (state) => state.averageBodyWeightController,
                builder: (context, averageBodyWeightController) {
                  return CustomTextFormField(
                    controller: averageBodyWeightController,
                    hintText: "msg_average_body_weight2".tr,
                    textInputAction: TextInputAction.done,
                  );
                },
              ),
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
  Widget _buildQuantity(BuildContext context) {
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
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 17.v,
              ),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_25_11_2022".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 18.v,
                    width: 16.h,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
