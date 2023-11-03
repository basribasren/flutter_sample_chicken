import '../models/daybreed_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DaybreedItemWidget extends StatelessWidget {
  DaybreedItemWidget(
    this.daybreedItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DaybreedItemModel daybreedItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 5.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              daybreedItemModelObj.day!,
              style: CustomTextStyles.titleMedium17,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text(
                    daybreedItemModelObj.breed!,
                    style: CustomTextStyles.bodyMediumPoppins,
                  ),
                ),
                Text(
                  daybreedItemModelObj.quantity!,
                  style: CustomTextStyles.bodyMediumPoppins,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
