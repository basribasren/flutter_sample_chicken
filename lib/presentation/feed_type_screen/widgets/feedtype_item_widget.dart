import '../models/feedtype_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FeedtypeItemWidget extends StatelessWidget {
  FeedtypeItemWidget(
    this.feedtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FeedtypeItemModel feedtypeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: double.maxFinite,
    );
  }
}
