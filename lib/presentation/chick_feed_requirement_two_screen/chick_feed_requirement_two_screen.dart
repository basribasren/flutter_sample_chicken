import 'bloc/chick_feed_requirement_two_bloc.dart';
import 'models/chick_feed_requirement_two_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/presentation/homepage_service_buy_page/homepage_service_buy_page.dart';
import 'package:basri_s_application4/presentation/income_one_page/income_one_page.dart';
import 'package:basri_s_application4/presentation/new_order_tab_container_page/new_order_tab_container_page.dart';
import 'package:basri_s_application4/presentation/single_batch_view_income_page/single_batch_view_income_page.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_bottom_bar.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class ChickFeedRequirementTwoScreen extends StatelessWidget {
  ChickFeedRequirementTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ChickFeedRequirementTwoBloc>(
      create: (context) =>
          ChickFeedRequirementTwoBloc(ChickFeedRequirementTwoState(
        chickFeedRequirementTwoModelObj: ChickFeedRequirementTwoModel(),
      ))
            ..add(ChickFeedRequirementTwoInitialEvent()),
      child: ChickFeedRequirementTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ChickFeedRequirementTwoBloc,
        ChickFeedRequirementTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 13.v),
                  _buildChickFeedRequirement(context),
                  Spacer(),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
            floatingActionButton: _buildFloatingActionButton(context),
          ),
        );
      },
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
  Widget _buildChickFeedRequirement(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 146.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 258.h,
                    right: 15.h,
                    bottom: 116.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlineBluegray40001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_breed".tr,
                          style: CustomTextStyles.labelLargeBahnschrift,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMenu138,
                        height: 11.adaptSize,
                        width: 11.adaptSize,
                        margin: EdgeInsets.only(
                          left: 54.h,
                          top: 1.v,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_day_1".tr,
                        style: CustomTextStyles.titleMedium17,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 16.h,
                    bottom: 23.v,
                  ),
                  child: Text(
                    "lbl_100gms".tr,
                    style: CustomTextStyles.bodyMediumPoppins,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 25.v,
                  ),
                  child: Text(
                    "lbl_breed".tr,
                    style: CustomTextStyles.bodyMediumPoppins,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 12.v),
                child: _buildVectorForty(context),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 124.v,
                  width: 118.h,
                  margin: EdgeInsets.only(right: 12.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPolygon1,
                        height: 14.v,
                        width: 24.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 7.h),
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
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl_broiler".tr,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                              ),
                              SizedBox(height: 6.v),
                              SizedBox(
                                width: 118.h,
                                child: Divider(
                                  color: appTheme.gray200,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl_deshi".tr,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              SizedBox(
                                width: 118.h,
                                child: Divider(
                                  color: appTheme.gray200,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl_layer".tr,
                                  style: CustomTextStyles.bodySmall12,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              SizedBox(
                                width: 118.h,
                                child: Divider(
                                  color: appTheme.gray200,
                                ),
                              ),
                              SizedBox(height: 4.v),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text(
                                  "lbl_breeder_farm".tr,
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
        SizedBox(height: 1.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_day_2".tr,
            style: CustomTextStyles.titleMedium17,
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildBreed(
            context,
            breed: "lbl_breed".tr,
            gms: "lbl_100gms".tr,
          ),
        ),
        SizedBox(height: 10.v),
        _buildVectorForty(context),
        SizedBox(height: 13.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_day_3".tr,
            style: CustomTextStyles.titleMedium17,
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildBreed(
            context,
            breed: "lbl_breed".tr,
            gms: "lbl_100gms".tr,
          ),
        ),
        SizedBox(height: 10.v),
        _buildVectorForty(context),
        SizedBox(height: 14.v),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "lbl_day_4".tr,
            style: CustomTextStyles.titleMedium17,
          ),
        ),
        SizedBox(height: 4.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: _buildBreed(
            context,
            breed: "lbl_breed".tr,
            gms: "lbl_100gms".tr,
          ),
        ),
        SizedBox(height: 10.v),
        _buildVectorForty(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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

  /// Common widget
  Widget _buildVectorForty(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBreed(
    BuildContext context, {
    required String breed,
    required String gms,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            breed,
            style: CustomTextStyles.bodyMediumPoppins.copyWith(
              color: appTheme.blueGray40001,
            ),
          ),
        ),
        Text(
          gms,
          style: CustomTextStyles.bodyMediumPoppins.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Buysell:
        return AppRoutes.homepageServiceBuyPage;
      case BottomBarEnum.Batches:
        return AppRoutes.singleBatchViewIncomePage;
      case BottomBarEnum.Feedmanagement:
        return AppRoutes.newOrderTabContainerPage;
      case BottomBarEnum.Farmsettings:
        return AppRoutes.incomeOnePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homepageServiceBuyPage:
        return HomepageServiceBuyPage.builder(context);
      case AppRoutes.singleBatchViewIncomePage:
        return SingleBatchViewIncomePage.builder(context);
      case AppRoutes.newOrderTabContainerPage:
        return NewOrderTabContainerPage.builder(context);
      case AppRoutes.incomeOnePage:
        return IncomeOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
