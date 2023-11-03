import '../models/userdate_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserdateItemWidget extends StatelessWidget {
  UserdateItemWidget(
    this.userdateItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserdateItemModel userdateItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 6.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              userdateItemModelObj.userDate!,
              style: CustomTextStyles.labelMediumBluegray40001,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userdateItemModelObj.userTitle!,
                  style: CustomTextStyles.titleMedium17,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDelete1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              userdateItemModelObj.userText!,
              style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
            ),
          ),
        ],
      ),
    );
  }
}
