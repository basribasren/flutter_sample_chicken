import '../models/textlist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextlistItemWidget extends StatelessWidget {
  TextlistItemWidget(
    this.textlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TextlistItemModel textlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 78.adaptSize,
              width: 78.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillIndigo.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomImageView(
                imagePath: textlistItemModelObj?.userImage,
                height: 53.v,
                width: 57.h,
                alignment: Alignment.topLeft,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              textlistItemModelObj.text!,
              style: CustomTextStyles.labelLargeBahnschriftBlack900,
            ),
            SizedBox(height: 1.v),
          ],
        ),
      ),
    );
  }
}
