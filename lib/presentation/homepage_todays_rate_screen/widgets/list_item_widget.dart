import '../models/list_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 106.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 105.adaptSize,
              width: 105.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomImageView(
                imagePath: listItemModelObj?.userImage,
                height: 71.v,
                width: 77.h,
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              width: 82.h,
              margin: EdgeInsets.only(left: 10.h),
              child: Text(
                listItemModelObj.text!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodySmall12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
