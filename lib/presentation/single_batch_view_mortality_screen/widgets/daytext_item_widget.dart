import '../models/daytext_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DaytextItemWidget extends StatelessWidget {
  DaytextItemWidget(
    this.daytextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DaytextItemModel daytextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          daytextItemModelObj.dayText!,
          style: CustomTextStyles.titleMedium17,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            daytextItemModelObj.birdsText!,
            style: CustomTextStyles.bodyMediumPoppins,
          ),
        ),
      ],
    );
  }
}
