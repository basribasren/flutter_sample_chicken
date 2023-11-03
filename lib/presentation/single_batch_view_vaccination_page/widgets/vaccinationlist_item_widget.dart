import '../models/vaccinationlist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VaccinationlistItemWidget extends StatelessWidget {
  VaccinationlistItemWidget(
    this.vaccinationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VaccinationlistItemModel vaccinationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 9.v),
          child: Text(
            vaccinationlistItemModelObj.date!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 9.v),
          child: Text(
            vaccinationlistItemModelObj.vaccination!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
      ],
    );
  }
}
