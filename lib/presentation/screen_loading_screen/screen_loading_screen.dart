import 'bloc/screen_loading_bloc.dart';
import 'models/screen_loading_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ScreenLoadingScreen extends StatelessWidget {
  const ScreenLoadingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ScreenLoadingBloc>(
      create: (context) => ScreenLoadingBloc(ScreenLoadingState(
        screenLoadingModelObj: ScreenLoadingModel(),
      ))
        ..add(ScreenLoadingInitialEvent()),
      child: ScreenLoadingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ScreenLoadingBloc, ScreenLoadingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 38.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPetbarnVisual,
                    height: 132.v,
                    width: 98.h,
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: SizedBox(
                      height: 13.v,
                      width: 306.h,
                      child: ClipRRect(
                        child: LinearProgressIndicator(
                          value: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "lbl_loading".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "lbl_43".tr,
                    style: CustomTextStyles.titleMediumSemiBold_1,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 51.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 20.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 15.v),
        ),
      ],
    );
  }
}
