import '../models/userprofilerow1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilerow1ItemWidget extends StatelessWidget {
  Userprofilerow1ItemWidget(
    this.userprofilerow1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilerow1ItemModel userprofilerow1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 4.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL25,
              child: CustomImageView(
                imagePath: userprofilerow1ItemModelObj?.userImage,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 4.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilerow1ItemModelObj.batchName!,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 6.v),
                Text(
                  userprofilerow1ItemModelObj.weeksAndDays!,
                  style: CustomTextStyles.bodySmallBluegray40001,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
