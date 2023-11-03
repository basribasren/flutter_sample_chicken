import 'bloc/network_error_bloc.dart';
import 'models/network_error_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NetworkErrorBloc>(
      create: (context) => NetworkErrorBloc(NetworkErrorState(
        networkErrorModelObj: NetworkErrorModel(),
      ))
        ..add(NetworkErrorInitialEvent()),
      child: NetworkErrorScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NetworkErrorBloc, NetworkErrorState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 102.v,
                right: 20.h,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgError1,
                    height: 350.adaptSize,
                    width: 350.adaptSize,
                  ),
                  SizedBox(height: 33.v),
                  SizedBox(
                    height: 27.v,
                    width: 144.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_page_not_found".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_page_not_found".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Text(
                    "msg_try_and_check_your".tr,
                    style: CustomTextStyles.bodyMediumPoppinsBlack90014,
                  ),
                  SizedBox(height: 5.v),
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
