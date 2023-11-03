import '../models/incomelist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IncomelistItemWidget extends StatelessWidget {
  IncomelistItemWidget(
    this.incomelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  IncomelistItemModel incomelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      incomelistItemModelObj.chicks!,
      style: CustomTextStyles.titleMedium17,
    );
  }
}
