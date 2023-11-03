import '../models/languageoptions_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LanguageoptionsItemWidget extends StatelessWidget {
  LanguageoptionsItemWidget(
    this.languageoptionsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguageoptionsItemModel languageoptionsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 74.h,
              top: 2.v,
            ),
            child: Text(
              languageoptionsItemModelObj.text!,
              style: CustomTextStyles.titleMedium16,
            ),
          ),
          CustomImageView(
            imagePath: languageoptionsItemModelObj?.imageClass,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ],
      ),
    );
  }
}
