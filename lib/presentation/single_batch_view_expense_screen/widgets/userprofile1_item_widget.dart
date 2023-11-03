import '../models/userprofile1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 6.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                    userprofile1ItemModelObj.date!,
                    style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgDelete1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 3.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofile1ItemModelObj.description!,
                        style: CustomTextStyles.titleSmall15_1,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        userprofile1ItemModelObj.category!,
                        style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.v),
                  child: Text(
                    userprofile1ItemModelObj.amount!,
                    style: CustomTextStyles.titleMediumRedA400,
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
