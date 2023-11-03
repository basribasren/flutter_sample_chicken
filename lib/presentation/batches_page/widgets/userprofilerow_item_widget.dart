import '../models/userprofilerow_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilerowItemWidget extends StatelessWidget {
  UserprofilerowItemWidget(
    this.userprofilerowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilerowItemModel userprofilerowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 5.v,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL25,
              child: CustomImageView(
                imagePath: userprofilerowItemModelObj?.userImage,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofilerowItemModelObj.batchName!,
                  style: CustomTextStyles.titleMedium16,
                ),
                SizedBox(height: 6.v),
                Text(
                  userprofilerowItemModelObj.weeksDays!,
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
