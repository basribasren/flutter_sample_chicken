import '../models/userprofile_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomImageView(
            imagePath: userprofileItemModelObj?.userImage,
            height: 94.adaptSize,
            width: 94.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            margin: EdgeInsets.only(top: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 240.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Text(
                          userprofileItemModelObj.userName!,
                          style: CustomTextStyles.titleMediumSemiBold,
                        ),
                      ),
                      Container(
                        width: 77.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillAmber.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          userprofileItemModelObj.posted!,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainer_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                Text(
                  userprofileItemModelObj.quantity!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 23.v),
                Text(
                  userprofileItemModelObj.datePosted!,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
