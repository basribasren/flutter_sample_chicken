import 'bloc/feed_bag_size_bloc.dart';
import 'models/feed_bag_size_model.dart';
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
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class FeedBagSizeScreen extends StatelessWidget {
  FeedBagSizeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FeedBagSizeBloc>(
      create: (context) => FeedBagSizeBloc(FeedBagSizeState(
        feedBagSizeModelObj: FeedBagSizeModel(),
      ))
        ..add(FeedBagSizeInitialEvent()),
      child: FeedBagSizeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<FeedBagSizeBloc, FeedBagSizeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 46.v),
                  _buildFeedBagSize(context),
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
        text: "lbl_feed_bag_size".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 21.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFeedBagSize(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 37.h),
              child: Text(
                "msg_no_feed_bag_size".tr,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Opacity(
                  opacity: 0.65,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_tap_on".tr,
                      style: CustomTextStyles.bodyMediumPoppinsBlack900,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.65,
                  child: CustomIconButton(
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillPrimaryTL15,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMaterialSymbolsAdd,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.65,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "msg_below_to_add_feed2".tr,
                      style: CustomTextStyles.bodyMediumPoppinsBlack900,
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
