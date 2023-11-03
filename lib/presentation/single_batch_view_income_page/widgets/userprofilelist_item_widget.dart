import '../models/userprofilelist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 1.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 5.v),
                child: Text(
                  userprofilelistItemModelObj.date!,
                  style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgShare1,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(top: 3.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgDelete1,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  left: 21.h,
                  top: 3.v,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofilelistItemModelObj.userName!,
                      style: CustomTextStyles.titleSmall15_1,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      userprofilelistItemModelObj.userCategory!,
                      style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 21.v),
                child: Text(
                  userprofilelistItemModelObj.userPoints!,
                  style: CustomTextStyles.titleMediumGreen600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
