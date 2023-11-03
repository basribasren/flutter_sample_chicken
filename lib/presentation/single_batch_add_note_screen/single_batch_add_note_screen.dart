import 'bloc/single_batch_add_note_bloc.dart';
import 'models/single_batch_add_note_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleBatchAddNoteScreen extends StatelessWidget {
  const SingleBatchAddNoteScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchAddNoteBloc>(
      create: (context) => SingleBatchAddNoteBloc(SingleBatchAddNoteState(
        singleBatchAddNoteModelObj: SingleBatchAddNoteModel(),
      ))
        ..add(SingleBatchAddNoteInitialEvent()),
      child: SingleBatchAddNoteScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 2.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_add_note".tr,
                style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
              ),
              SizedBox(height: 18.v),
              BlocSelector<SingleBatchAddNoteBloc, SingleBatchAddNoteState,
                  TextEditingController?>(
                selector: (state) => state.titleController,
                builder: (context, titleController) {
                  return CustomTextFormField(
                    controller: titleController,
                    hintText: "lbl_title".tr,
                  );
                },
              ),
              SizedBox(height: 15.v),
              BlocSelector<SingleBatchAddNoteBloc, SingleBatchAddNoteState,
                  TextEditingController?>(
                selector: (state) => state.descriptionController,
                builder: (context, descriptionController) {
                  return CustomTextFormField(
                    controller: descriptionController,
                    hintText: "lbl_description2".tr,
                    textInputAction: TextInputAction.done,
                    maxLines: 13,
                  );
                },
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAddButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 53.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 18.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_batch".tr,
        margin: EdgeInsets.only(left: 31.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_add".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 30.v,
      ),
    );
  }
}
