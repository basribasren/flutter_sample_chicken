import '../models/productinfo_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductinfoItemWidget extends StatelessWidget {
  ProductinfoItemWidget(
    this.productinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductinfoItemModel productinfoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 11.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 5.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  productinfoItemModelObj.date!,
                  style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
                ),
              ),
              Text(
                productinfoItemModelObj.avgWeight!,
                style: CustomTextStyles.bodyMediumPoppins,
              ),
            ],
          ),
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(right: 101.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productinfoItemModelObj.day!,
                  style: CustomTextStyles.titleMedium17,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    productinfoItemModelObj.fcr!,
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
