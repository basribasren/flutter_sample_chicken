import '../models/reminderlist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReminderlistItemWidget extends StatelessWidget {
  ReminderlistItemWidget(
    this.reminderlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ReminderlistItemModel reminderlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 59.h),
            child: Text(
              reminderlistItemModelObj.reminderTitle!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgNotification1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Expanded(
                  child: Container(
                    width: 281.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 3.v,
                    ),
                    child: Text(
                      reminderlistItemModelObj.loremIpsumDolor!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPoppins_1,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 59.h),
            child: Text(
              reminderlistItemModelObj.dateTime!,
              style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
            ),
          ),
        ],
      ),
    );
  }
}
