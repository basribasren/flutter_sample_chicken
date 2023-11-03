import '../models/animalfeedinglist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimalfeedinglistItemWidget extends StatelessWidget {
  AnimalfeedinglistItemWidget(
    this.animalfeedinglistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AnimalfeedinglistItemModel animalfeedinglistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_16_11_2022".tr,
                          style: CustomTextStyles.bodySmallPoppinsBluegray40001,
                        ),
                        TextSpan(
                          text: "lbl_today2".tr,
                          style: CustomTextStyles.bodySmallPoppinsPrimary,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    animalfeedinglistItemModelObj.feedAmount!,
                    style: CustomTextStyles.bodyMediumPoppins,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    animalfeedinglistItemModelObj.dayNumber!,
                    style: CustomTextStyles.titleMedium17,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 7.v),
                  child: Text(
                    animalfeedinglistItemModelObj.feedType!,
                    style: CustomTextStyles.bodyMediumPoppins,
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
