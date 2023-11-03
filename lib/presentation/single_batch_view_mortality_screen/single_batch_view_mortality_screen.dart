import '../single_batch_view_mortality_screen/widgets/daytext_item_widget.dart';
import 'bloc/single_batch_view_mortality_bloc.dart';
import 'models/daytext_item_model.dart';
import 'models/single_batch_view_mortality_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class SingleBatchViewMortalityScreen extends StatelessWidget {
  const SingleBatchViewMortalityScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchViewMortalityBloc>(
      create: (context) =>
          SingleBatchViewMortalityBloc(SingleBatchViewMortalityState(
        singleBatchViewMortalityModelObj: SingleBatchViewMortalityModel(),
      ))
            ..add(SingleBatchViewMortalityInitialEvent()),
      child: SingleBatchViewMortalityScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              width: 363.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_mortality".tr,
                    style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
                  ),
                  SizedBox(height: 14.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 117.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineBluegray40001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 1.h,
                                top: 1.v,
                              ),
                              child: Text(
                                "lbl_all_time".tr,
                                style: CustomTextStyles.labelLargeBahnschrift,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMenu136,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(top: 4.v),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 122.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 9.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineBluegray40001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          "msg_total_mortality".tr,
                          style: CustomTextStyles.labelLargeBahnschrift,
                        ),
                      ),
                      Container(
                        width: 108.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlineBluegray40001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          "lbl_mortality2".tr,
                          style: CustomTextStyles.labelLargeBahnschrift,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "lbl_19_11_2022".tr,
                        style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 4.h,
                    ),
                    child: BlocSelector<
                        SingleBatchViewMortalityBloc,
                        SingleBatchViewMortalityState,
                        SingleBatchViewMortalityModel?>(
                      selector: (state) =>
                          state.singleBatchViewMortalityModelObj,
                      builder: (context, singleBatchViewMortalityModelObj) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 26.0.v),
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Divider(
                                  height: 1.v,
                                  thickness: 1.v,
                                  color: appTheme.gray300,
                                ),
                              ),
                            );
                          },
                          itemCount: singleBatchViewMortalityModelObj
                                  ?.daytextItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            DaytextItemModel model =
                                singleBatchViewMortalityModelObj
                                        ?.daytextItemList[index] ??
                                    DaytextItemModel();
                            return DaytextItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "lbl_22_11_2022".tr,
                        style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 60,
      width: 60,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgMaterialSymbolsAdd,
        height: 30.0.v,
        width: 30.0.h,
      ),
    );
  }
}
