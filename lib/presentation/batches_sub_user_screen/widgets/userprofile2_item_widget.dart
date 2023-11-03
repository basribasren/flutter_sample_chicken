import '../models/userprofile2_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfileUser2,
            height: 50.adaptSize,
            width: 50.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 2.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile2ItemModelObj.userName!,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 5.v),
                Text(
                  userprofile2ItemModelObj.canEdit!,
                  style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgDelete1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 15.v,
              right: 2.h,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
