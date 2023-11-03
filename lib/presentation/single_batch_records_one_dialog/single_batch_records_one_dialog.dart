import 'bloc/single_batch_records_one_bloc.dart';
import 'models/single_batch_records_one_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchRecordsOneDialog extends StatelessWidget {
  const SingleBatchRecordsOneDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchRecordsOneBloc>(
      create: (context) => SingleBatchRecordsOneBloc(SingleBatchRecordsOneState(
        singleBatchRecordsOneModelObj: SingleBatchRecordsOneModel(),
      ))
        ..add(SingleBatchRecordsOneInitialEvent()),
      child: SingleBatchRecordsOneDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 314.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 35.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClose1,
            height: 80.adaptSize,
            width: 80.adaptSize,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: 179.h,
            child: Text(
              "msg_are_you_sure_you2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleMediumBahnschrift,
            ),
          ),
          SizedBox(height: 30.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomOutlinedButton(
                  text: "lbl_cancel".tr,
                  margin: EdgeInsets.only(right: 8.h),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumBahnschriftBluegray40001Bold,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  height: 40.v,
                  text: "lbl_close".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonTextStyle: CustomTextStyles
                      .titleMediumBahnschriftOnPrimaryContainerBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
