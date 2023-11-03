import '../models/vaccinationlist1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Vaccinationlist1ItemWidget extends StatelessWidget {
  Vaccinationlist1ItemWidget(
    this.vaccinationlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vaccinationlist1ItemModel vaccinationlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 9.v),
          child: Text(
            vaccinationlist1ItemModelObj.date!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 9.v),
          child: Text(
            vaccinationlist1ItemModelObj.vaccination!,
            style: CustomTextStyles.bodySmallPoppinsBluegray4000112,
          ),
        ),
      ],
    );
  }
}
