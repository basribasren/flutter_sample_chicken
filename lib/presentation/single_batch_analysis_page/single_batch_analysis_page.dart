import 'bloc/single_batch_analysis_bloc.dart';
import 'models/single_batch_analysis_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchAnalysisPage extends StatefulWidget {
  const SingleBatchAnalysisPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchAnalysisPageState createState() => SingleBatchAnalysisPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchAnalysisBloc>(
      create: (context) => SingleBatchAnalysisBloc(SingleBatchAnalysisState(
        singleBatchAnalysisModelObj: SingleBatchAnalysisModel(),
      ))
        ..add(SingleBatchAnalysisInitialEvent()),
      child: SingleBatchAnalysisPage(),
    );
  }
}

class SingleBatchAnalysisPageState extends State<SingleBatchAnalysisPage>
    with AutomaticKeepAliveClientMixin<SingleBatchAnalysisPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SingleBatchAnalysisBloc, SingleBatchAnalysisState>(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(),
                      SizedBox(height: 11.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "msg_financial_performance".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      _buildFinancialSummary(context),
                      SizedBox(height: 21.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "msg_financial_analysis".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      _buildCostPerBird(context),
                      SizedBox(height: 22.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "lbl_feed".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      _buildFeedWeight(context),
                      SizedBox(height: 20.v),
                      Padding(
                        padding: EdgeInsets.only(left: 37.h),
                        child: Text(
                          "msg_feed_performance".tr,
                          style: CustomTextStyles.titleMedium16,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildFeedIntake(context),
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
  Widget _buildFinancialSummary(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6.h,
        right: 26.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_rs_2_00_000".tr,
                  style: CustomTextStyles.labelLargeBlack900SemiBold,
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_total_expenses".tr,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: SizedBox(
              height: 60.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_rs_2_50_000".tr,
                  style: CustomTextStyles.labelLargeBlack900SemiBold,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_total_income".tr,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: SizedBox(
              height: 60.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 1.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30.h,
              top: 9.v,
              bottom: 9.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_rs_50_000".tr,
                  style: CustomTextStyles.labelLargeBlack900SemiBold,
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_net_balance".tr,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCostPerBird(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 12.v,
                bottom: 8.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_rs_100".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_cost_per_bird".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: SizedBox(
                height: 60.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
            Spacer(
              flex: 49,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 9.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_5_000".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_sold_birds".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 50,
            ),
            SizedBox(
              height: 60.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 12.v,
                bottom: 9.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_rs_1_25_000".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "msg_profit_on_sold_birds".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedWeight(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 33.h),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                bottom: 10.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_15_000_kg".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "msg_total_feed_consumed".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 44,
            ),
            SizedBox(
              height: 60.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
            Spacer(
              flex: 55,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 11.v,
                right: 10.h,
                bottom: 11.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_rs_120".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "msg_per_bird_feed_cost".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedIntake(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_3_000_gms".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 102.h,
                    child: Text(
                      "msg_per_bird_feed_intake_gms".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallPoppins_1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: SizedBox(
                height: 76.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 16.v,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "lbl_1_000_gms".tr,
                      style: CustomTextStyles.labelLargeBlack900SemiBold,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  SizedBox(
                    width: 70.h,
                    child: Text(
                      "msg_average_body_weight".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallPoppins_1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: SizedBox(
                height: 76.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                right: 16.h,
                bottom: 21.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_3".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_fcr".tr,
                    style: CustomTextStyles.bodySmallPoppins_1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
