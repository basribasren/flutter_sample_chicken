import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavBuySell,
      activeIcon: ImageConstant.imgNavBuySell,
      title: "lbl_buy_sell".tr,
      type: BottomBarEnum.Buysell,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBatches,
      activeIcon: ImageConstant.imgNavBatches,
      title: "lbl_batches".tr,
      type: BottomBarEnum.Batches,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFeedManagement,
      activeIcon: ImageConstant.imgNavFeedManagement,
      title: "lbl_feed_management".tr,
      type: BottomBarEnum.Feedmanagement,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavFarmSettings,
      activeIcon: ImageConstant.imgNavFarmSettings,
      title: "lbl_farm_settings".tr,
      type: BottomBarEnum.Farmsettings,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93.v,
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder22,
                  ),
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 21.v,
                    width: 20.h,
                    color: appTheme.black900,
                    margin: EdgeInsets.fromLTRB(11.h, 9.v, 12.h, 13.v),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder22,
                  ),
                  child: CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 22.v,
                    width: 24.h,
                    color: appTheme.black900,
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 11.v,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Buysell,
  Batches,
  Feedmanagement,
  Farmsettings,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
