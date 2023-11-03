import 'bloc/single_batch_income_bloc.dart';
import 'models/single_batch_income_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/core/utils/validation_functions.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:basri_s_application4/widgets/custom_radio_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SingleBatchIncomeScreen extends StatelessWidget {
  SingleBatchIncomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchIncomeBloc>(
      create: (context) => SingleBatchIncomeBloc(SingleBatchIncomeState(
        singleBatchIncomeModelObj: SingleBatchIncomeModel(),
      ))
        ..add(SingleBatchIncomeInitialEvent()),
      child: SingleBatchIncomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 2.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 16.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "lbl_add_income".tr,
                            style: CustomTextStyles
                                .titleLargePoppinsBlack900SemiBold,
                          ),
                          SizedBox(height: 18.v),
                          _buildAddIncomeName(context),
                          SizedBox(height: 15.v),
                          _buildAddIncomeContactValue(context),
                          SizedBox(height: 15.v),
                          _buildAddIncomeCategoryRow(context),
                          SizedBox(height: 14.v),
                          _buildQuantityvalue(context),
                          SizedBox(height: 14.v),
                          _buildAddIncomeAmount(context),
                          SizedBox(height: 17.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 21.h),
                              child: Text(
                                "msg_payment_method".tr,
                                style: CustomTextStyles.bodyMediumBlack900,
                              ),
                            ),
                          ),
                          SizedBox(height: 11.v),
                          _buildAddIncomePaymentMethod(context),
                          SizedBox(height: 17.v),
                          _buildAddIncomeAmount1(context),
                          SizedBox(height: 15.v),
                          _buildAddIncomeAmount2(context),
                          SizedBox(height: 15.v),
                          _buildAddIncomeDescriptionValue(context),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildCashIn(context),
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
        margin: EdgeInsets.only(left: 26.h),
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
  Widget _buildAddIncomeName(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeNameController,
      builder: (context, addIncomeNameController) {
        return CustomTextFormField(
          controller: addIncomeNameController,
          hintText: "lbl_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomeContactValue(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeContactValueController,
      builder: (context, addIncomeContactValueController) {
        return CustomTextFormField(
          controller: addIncomeContactValueController,
          hintText: "lbl_contact".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomeCategoryValue(BuildContext context) {
    return Expanded(
      child: BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
          TextEditingController?>(
        selector: (state) => state.addIncomeCategoryValueController,
        builder: (context, addIncomeCategoryValueController) {
          return CustomTextFormField(
            controller: addIncomeCategoryValueController,
            hintText: "lbl_income_category".tr,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 22.v, 17.h, 21.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu136,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 59.v,
            ),
            contentPadding: EdgeInsets.only(
              left: 21.h,
              top: 20.v,
              bottom: 20.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddIncomeCategoryRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAddIncomeCategoryValue(context),
        Padding(
          padding: EdgeInsets.only(left: 18.h),
          child: CustomIconButton(
            height: 59.adaptSize,
            width: 59.adaptSize,
            padding: EdgeInsets.all(15.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL10,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolsAdd,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddIncomeQuantityValue(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
            TextEditingController?>(
          selector: (state) => state.addIncomeQuantityValueController,
          builder: (context, addIncomeQuantityValueController) {
            return CustomTextFormField(
              controller: addIncomeQuantityValueController,
              hintText: "lbl_quantity".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddIncomeWeightValue(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
            TextEditingController?>(
          selector: (state) => state.addIncomeWeightValueController,
          builder: (context, addIncomeWeightValueController) {
            return CustomTextFormField(
              controller: addIncomeWeightValueController,
              hintText: "lbl_weight".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddIncomeRateValue(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 5.h),
        child: BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
            TextEditingController?>(
          selector: (state) => state.addIncomeRateValueController,
          builder: (context, addIncomeRateValueController) {
            return CustomTextFormField(
              controller: addIncomeRateValueController,
              hintText: "lbl_rate".tr,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuantityvalue(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildAddIncomeQuantityValue(context),
        _buildAddIncomeWeightValue(context),
        _buildAddIncomeRateValue(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddIncomeAmount(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeAmountController,
      builder: (context, addIncomeAmountController) {
        return CustomTextFormField(
          controller: addIncomeAmountController,
          hintText: "lbl_bill_amount".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomePaymentMethod(BuildContext context) {
    return BlocBuilder<SingleBatchIncomeBloc, SingleBatchIncomeState>(
      builder: (context, state) {
        return state.singleBatchIncomeModelObj!.radioList.isNotEmpty
            ? Row(
                children: [
                  CustomRadioButton(
                    text: "lbl_cash".tr,
                    value: state.singleBatchIncomeModelObj?.radioList[0] ?? "",
                    groupValue: state.addIncomePaymentMethod,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      context
                          .read<SingleBatchIncomeBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.h),
                    child: CustomRadioButton(
                      text: "lbl_online".tr,
                      value:
                          state.singleBatchIncomeModelObj?.radioList[1] ?? "",
                      groupValue: state.addIncomePaymentMethod,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SingleBatchIncomeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 58.h),
                    child: CustomRadioButton(
                      text: "lbl_unpaid".tr,
                      value:
                          state.singleBatchIncomeModelObj?.radioList[2] ?? "",
                      groupValue: state.addIncomePaymentMethod,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        context
                            .read<SingleBatchIncomeBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomeAmount1(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeAmountController1,
      builder: (context, addIncomeAmountController1) {
        return CustomTextFormField(
          controller: addIncomeAmountController1,
          hintText: "lbl_amount_paid".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomeAmount2(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeAmountController2,
      builder: (context, addIncomeAmountController2) {
        return CustomTextFormField(
          controller: addIncomeAmountController2,
          hintText: "lbl_amount_due".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddIncomeDescriptionValue(BuildContext context) {
    return BlocSelector<SingleBatchIncomeBloc, SingleBatchIncomeState,
        TextEditingController?>(
      selector: (state) => state.addIncomeDescriptionValueController,
      builder: (context, addIncomeDescriptionValueController) {
        return CustomTextFormField(
          controller: addIncomeDescriptionValueController,
          hintText: "lbl_description2".tr,
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCashIn(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_cash_in".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 40.v,
      ),
    );
  }
}
