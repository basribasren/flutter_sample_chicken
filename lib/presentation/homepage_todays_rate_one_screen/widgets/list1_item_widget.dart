import '../models/list1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(
    this.list1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List1ItemModel list1ItemModelObj;

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
                horizontal: 18.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineIndigo502.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomImageView(
                imagePath: list1ItemModelObj?.userImage,
                height: 73.v,
                width: 64.h,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              width: 88.h,
              margin: EdgeInsets.only(left: 7.h),
              child: Text(
                list1ItemModelObj.text!,
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
