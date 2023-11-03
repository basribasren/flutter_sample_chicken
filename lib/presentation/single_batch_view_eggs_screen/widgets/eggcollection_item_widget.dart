import '../models/eggcollection_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EggcollectionItemWidget extends StatelessWidget {
  EggcollectionItemWidget(
    this.eggcollectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EggcollectionItemModel eggcollectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 4.v,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_17_12_20222".tr,
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
                Text(
                  eggcollectionItemModelObj.layingPercentage!,
                  style: CustomTextStyles.bodySmallPoppins12,
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  eggcollectionItemModelObj.day!,
                  style: CustomTextStyles.titleMedium16,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text(
                    eggcollectionItemModelObj.costPerEgg!,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  eggcollectionItemModelObj.eggTrayCollection!,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
                Text(
                  eggcollectionItemModelObj.pulletEggs!,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
                Text(
                  eggcollectionItemModelObj.brokenEggs!,
                  style: CustomTextStyles.bodySmallPoppins_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
