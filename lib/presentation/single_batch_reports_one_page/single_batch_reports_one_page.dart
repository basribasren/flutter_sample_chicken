import 'bloc/single_batch_reports_one_bloc.dart';
import 'models/single_batch_reports_one_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchReportsOnePage extends StatefulWidget {
  const SingleBatchReportsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchReportsOnePageState createState() =>
      SingleBatchReportsOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchReportsOneBloc>(
      create: (context) => SingleBatchReportsOneBloc(SingleBatchReportsOneState(
        singleBatchReportsOneModelObj: SingleBatchReportsOneModel(),
      ))
        ..add(SingleBatchReportsOneInitialEvent()),
      child: SingleBatchReportsOnePage(),
    );
  }
}

class SingleBatchReportsOnePageState extends State<SingleBatchReportsOnePage>
    with AutomaticKeepAliveClientMixin<SingleBatchReportsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(right: 16.h),
                    child: BlocSelector<SingleBatchReportsOneBloc,
                        SingleBatchReportsOneState, TextEditingController?>(
                      selector: (state) => state.menuThirtyEightController,
                      builder: (context, menuThirtyEightController) {
                        return CustomTextFormField(
                          width: 178.h,
                          controller: menuThirtyEightController,
                          hintText: "lbl_all".tr,
                          hintStyle: CustomTextStyles.labelLargeBahnschrift,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerRight,
                          suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 11.v, 11.h, 8.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMenu136,
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 30.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            left: 10.h,
                            top: 7.v,
                            bottom: 7.v,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 17.h,
                      right: 80.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMicrosoftOffic,
                          height: 33.v,
                          width: 36.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 24.h,
                            top: 7.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "msg_export_analysis".tr,
                            style: CustomTextStyles.bodyMediumPoppinsBlack90014,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 271.v),
                  CustomElevatedButton(
                    text: "lbl_export".tr,
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
