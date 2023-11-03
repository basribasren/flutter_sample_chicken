import 'bloc/single_batch_view_vaccination_one_tab_container_bloc.dart';
import 'models/single_batch_view_vaccination_one_tab_container_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/presentation/homepage_service_buy_page/homepage_service_buy_page.dart';
import 'package:basri_s_application4/presentation/income_one_page/income_one_page.dart';
import 'package:basri_s_application4/presentation/new_order_tab_container_page/new_order_tab_container_page.dart';
import 'package:basri_s_application4/presentation/single_batch_view_income_page/single_batch_view_income_page.dart';
import 'package:basri_s_application4/presentation/single_batch_view_vaccination_one_page/single_batch_view_vaccination_one_page.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_bottom_bar.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class SingleBatchViewVaccinationOneTabContainerScreen extends StatefulWidget {
  const SingleBatchViewVaccinationOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchViewVaccinationOneTabContainerScreenState createState() =>
      SingleBatchViewVaccinationOneTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchViewVaccinationOneTabContainerBloc>(
      create: (context) => SingleBatchViewVaccinationOneTabContainerBloc(
          SingleBatchViewVaccinationOneTabContainerState(
        singleBatchViewVaccinationOneTabContainerModelObj:
            SingleBatchViewVaccinationOneTabContainerModel(),
      ))
        ..add(SingleBatchViewVaccinationOneTabContainerInitialEvent()),
      child: SingleBatchViewVaccinationOneTabContainerScreen(),
    );
  }
}

class SingleBatchViewVaccinationOneTabContainerScreenState
    extends State<SingleBatchViewVaccinationOneTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SingleBatchViewVaccinationOneTabContainerBloc,
        SingleBatchViewVaccinationOneTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 1.v),
                  Column(
                    children: [
                      Text(
                        "lbl_vaccination".tr,
                        style:
                            CustomTextStyles.titleLargePoppinsBlack900SemiBold,
                      ),
                      SizedBox(height: 21.v),
                      _buildTabview(context),
                      SizedBox(
                        height: 555.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            SingleBatchViewVaccinationOnePage.builder(context),
                            SingleBatchViewVaccinationOnePage.builder(context),
                          ],
                        ),
                      ),
                    ],
                  ),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 358.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Bahnschrift',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.blueGray40001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Bahnschrift',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "msg_vaccination_schedule".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_actual_vaccination2".tr,
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
