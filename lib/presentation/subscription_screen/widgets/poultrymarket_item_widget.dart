import '../models/poultrymarket_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PoultrymarketItemWidget extends StatelessWidget {
  PoultrymarketItemWidget(
    this.poultrymarketItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PoultrymarketItemModel poultrymarketItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      width: 69.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 29.h,
            child: Text(
              poultrymarketItemModelObj.poultryMarket!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.labelSmall,
            ),
          ),
          SizedBox(height: 50.v),
          CustomImageView(
            imagePath: poultrymarketItemModelObj?.poultryMarketImage,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          SizedBox(height: 30.v),
          CustomImageView(
            imagePath: poultrymarketItemModelObj?.poultryMarketImage2,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          SizedBox(height: 28.v),
          CustomImageView(
            imagePath: poultrymarketItemModelObj?.poultryMarketImage3,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          SizedBox(height: 33.v),
          CustomImageView(
            imagePath: poultrymarketItemModelObj?.poultryMarketImage4,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
