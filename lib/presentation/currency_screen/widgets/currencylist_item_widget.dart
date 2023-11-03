import '../models/currencylist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CurrencylistItemWidget extends StatelessWidget {
  CurrencylistItemWidget(
    this.currencylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CurrencylistItemModel currencylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              currencylistItemModelObj.price!,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
          CustomImageView(
            imagePath: currencylistItemModelObj?.userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 224.h,
              bottom: 2.v,
            ),
          ),
        ],
      ),
    );
  }
}
