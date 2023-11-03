import '../models/usertextlistsection_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsertextlistsectionItemWidget extends StatelessWidget {
  UsertextlistsectionItemWidget(
    this.usertextlistsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsertextlistsectionItemModel usertextlistsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 79.h,
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
              imagePath: usertextlistsectionItemModelObj?.userImage,
              height: 53.v,
              width: 57.h,
              alignment: Alignment.topLeft,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            usertextlistsectionItemModelObj.userText!,
            style: CustomTextStyles.labelLargeBahnschriftBlack900,
          ),
          SizedBox(height: 1.v),
        ],
      ),
    );
  }
}
