import '../models/myorderslist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyorderslistItemWidget extends StatelessWidget {
  MyorderslistItemWidget(
    this.myorderslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MyorderslistItemModel myorderslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: double.maxFinite,
    );
  }
}
