import '../models/expenseslist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ExpenseslistItemWidget extends StatelessWidget {
  ExpenseslistItemWidget(
    this.expenseslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExpenseslistItemModel expenseslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Text(
      expenseslistItemModelObj.chicks!,
      style: CustomTextStyles.titleMedium17,
    );
  }
}
