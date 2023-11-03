import 'bloc/add_customer_bloc.dart';
import 'models/add_customer_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/core/utils/validation_functions.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application4/widgets/custom_elevated_button.dart';
import 'package:basri_s_application4/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddCustomerScreen extends StatelessWidget {
  AddCustomerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddCustomerBloc>(
      create: (context) => AddCustomerBloc(AddCustomerState(
        addCustomerModelObj: AddCustomerModel(),
      ))
        ..add(AddCustomerInitialEvent()),
      child: AddCustomerScreen(),
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 17.v,
            ),
            child: Column(
              children: [
                BlocSelector<AddCustomerBloc, AddCustomerState,
                    TextEditingController?>(
                  selector: (state) => state.nameController,
                  builder: (context, nameController) {
                    return CustomTextFormField(
                      controller: nameController,
                      hintText: "lbl_name".tr,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 15.v),
                BlocSelector<AddCustomerBloc, AddCustomerState,
                    TextEditingController?>(
                  selector: (state) => state.contactNumberController,
                  builder: (context, contactNumberController) {
                    return CustomTextFormField(
                      controller: contactNumberController,
                      hintText: "lbl_contact_number2".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (!isNumeric(value)) {
                          return "err_msg_please_enter_valid_number".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildAddButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_add_customer".tr,
        margin: EdgeInsets.only(left: 26.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgDots1,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v),
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
