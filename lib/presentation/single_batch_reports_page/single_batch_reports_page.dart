import 'bloc/single_batch_reports_bloc.dart';
import 'models/single_batch_reports_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchReportsPage extends StatefulWidget {
  const SingleBatchReportsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchReportsPageState createState() => SingleBatchReportsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchReportsBloc>(
      create: (context) => SingleBatchReportsBloc(SingleBatchReportsState(
        singleBatchReportsModelObj: SingleBatchReportsModel(),
      ))
        ..add(SingleBatchReportsInitialEvent()),
      child: SingleBatchReportsPage(),
    );
  }
}

class SingleBatchReportsPageState extends State<SingleBatchReportsPage>
    with AutomaticKeepAliveClientMixin<SingleBatchReportsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SingleBatchReportsBloc, SingleBatchReportsState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                children: [
                  SizedBox(height: 21.v),
                  Column(
                    children: [
                      Divider(),
                      SizedBox(height: 14.v),
                      _buildVectorTen(context),
                      SizedBox(height: 219.v),
                      CustomElevatedButton(
                        text: "lbl_export".tr,
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                      ),
                    ],
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
  Widget _buildVectorTen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMicrosoftOffic,
            height: 33.v,
            width: 36.h,
            margin: EdgeInsets.only(
              top: 59.v,
              bottom: 52.v,
            ),
          ),
          Container(
            height: 144.v,
            width: 310.h,
            margin: EdgeInsets.only(left: 24.h),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 57.v),
                    child: Text(
                      "msg_export_analysis".tr,
                      style: CustomTextStyles.bodyMediumPoppinsBlack90014,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 178.h,
                    margin: EdgeInsets.only(
                      left: 119.h,
                      right: 13.h,
                      bottom: 114.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 5.v,
                    ),
                    decoration: AppDecoration.outlineBluegray40001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            "lbl_all".tr,
                            style: CustomTextStyles.labelLargeBahnschrift,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMenu138,
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 4.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 124.v,
                    width: 167.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPolygon1,
                          height: 14.v,
                          width: 33.h,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 10.h),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "msg_financial_performance".tr,
                                    style: CustomTextStyles.bodySmall12,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                SizedBox(
                                  width: 167.h,
                                  child: Divider(
                                    color: appTheme.gray200,
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "msg_financial_analysis".tr,
                                    style: CustomTextStyles.bodySmall12,
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                SizedBox(
                                  width: 167.h,
                                  child: Divider(
                                    color: appTheme.gray200,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_feed".tr,
                                    style: CustomTextStyles.bodySmall12,
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                SizedBox(
                                  width: 167.h,
                                  child: Divider(
                                    color: appTheme.gray200,
                                  ),
                                ),
                                SizedBox(height: 4.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "msg_feed_performance".tr,
                                    style: CustomTextStyles.bodySmall12,
                                  ),
                                ),
                                SizedBox(height: 1.v),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
