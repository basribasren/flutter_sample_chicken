import 'bloc/expenses_three_bloc.dart';
import 'models/expenses_three_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ExpensesThreeScreen extends StatelessWidget {
  const ExpensesThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ExpensesThreeBloc>(
      create: (context) => ExpensesThreeBloc(ExpensesThreeState(
        expensesThreeModelObj: ExpensesThreeModel(),
      ))
        ..add(ExpensesThreeInitialEvent()),
      child: ExpensesThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: BlocSelector<ExpensesThreeBloc, ExpensesThreeState,
                    TextEditingController?>(
                  selector: (state) => state.categoryNameController,
                  builder: (context, categoryNameController) {
                    return CustomTextFormField(
                      controller: categoryNameController,
                      hintText: "lbl_category2".tr,
                      textInputAction: TextInputAction.done,
                    );
                  },
                ),
              ),
              Spacer(),
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
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 18.v,
          bottom: 19.v,
        ),
      ),
      title: AppbarTitle(
        text: "msg_add_expenses_category".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 21.v),
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
