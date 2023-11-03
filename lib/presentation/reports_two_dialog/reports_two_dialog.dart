import 'bloc/reports_two_bloc.dart';
import 'models/reports_two_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ReportsTwoDialog extends StatelessWidget {
  const ReportsTwoDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ReportsTwoBloc>(
      create: (context) => ReportsTwoBloc(ReportsTwoState(
        reportsTwoModelObj: ReportsTwoModel(),
      ))
        ..add(ReportsTwoInitialEvent()),
      child: ReportsTwoDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 314.h,
      padding: EdgeInsets.symmetric(
        horizontal: 62.h,
        vertical: 67.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 7.v),
          CustomImageView(
            imagePath: ImageConstant.imgDownload31,
            height: 82.adaptSize,
            width: 82.adaptSize,
          ),
          SizedBox(height: 57.v),
          Text(
            "lbl_downloading".tr,
            style: theme.textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
