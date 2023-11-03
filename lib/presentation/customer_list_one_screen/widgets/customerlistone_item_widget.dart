import '../models/customerlistone_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomerlistoneItemWidget extends StatelessWidget {
  CustomerlistoneItemWidget(
    this.customerlistoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CustomerlistoneItemModel customerlistoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.v,
      width: double.maxFinite,
    );
  }
}
