import 'bloc/new_order_tab_container_bloc.dart';
import 'models/new_order_tab_container_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/presentation/new_order_page/new_order_page.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NewOrderTabContainerPage extends StatefulWidget {
  const NewOrderTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NewOrderTabContainerPageState createState() =>
      NewOrderTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NewOrderTabContainerBloc>(
      create: (context) => NewOrderTabContainerBloc(NewOrderTabContainerState(
        newOrderTabContainerModelObj: NewOrderTabContainerModel(),
      ))
        ..add(NewOrderTabContainerInitialEvent()),
      child: NewOrderTabContainerPage(),
    );
  }
}

class NewOrderTabContainerPageState extends State<NewOrderTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NewOrderTabContainerBloc, NewOrderTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 13.v),
                  Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgDots1,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 16.h),
                      ),
                      SizedBox(height: 19.v),
                      _buildTabview(context),
                      SizedBox(
                        height: 611.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            NewOrderPage.builder(context),
                            NewOrderPage.builder(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButton: _buildFloatingActionButton(context),
          ),
        );
      },
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
        labelColor: appTheme.blueGray40001,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Bahnschrift',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Bahnschrift',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: appTheme.blueGray100,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_inventory".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_orders".tr,
            ),
          ),
        ],
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
