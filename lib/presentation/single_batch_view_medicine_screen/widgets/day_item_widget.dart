import '../models/day_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DayItemWidget extends StatelessWidget {
  DayItemWidget(
    this.dayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DayItemModel dayItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dayItemModelObj.day!,
          style: CustomTextStyles.titleMedium17,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 4.v,
          ),
          child: Text(
            dayItemModelObj.medicineName!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
      ],
    );
  }
}
