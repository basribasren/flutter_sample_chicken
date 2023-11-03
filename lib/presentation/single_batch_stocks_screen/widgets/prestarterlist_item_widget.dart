import '../models/prestarterlist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PrestarterlistItemWidget extends StatelessWidget {
  PrestarterlistItemWidget(
    this.prestarterlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PrestarterlistItemModel prestarterlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          prestarterlistItemModelObj.preStarter!,
          style: CustomTextStyles.titleSmall15_1,
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            prestarterlistItemModelObj.date!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
      ],
    );
  }
}
