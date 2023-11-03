import 'bloc/add_order_one_bloc.dart';import 'models/add_order_one_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_elevated_button.dart';import 'package:basri_s_application4/widgets/custom_icon_button.dart';import 'package:basri_s_application4/widgets/custom_switch.dart';import 'package:basri_s_application4/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class AddOrderOneScreen extends StatelessWidget {const AddOrderOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<AddOrderOneBloc>(create: (context) => AddOrderOneBloc(AddOrderOneState(addOrderOneModelObj: AddOrderOneModel()))..add(AddOrderOneInitialEvent()), child: AddOrderOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildOrderButton(context), SizedBox(height: 18.v), _buildOrderDate(context), SizedBox(height: 15.v), _buildOrderWeightStack(context), SizedBox(height: 11.v), _buildBagQuantity(context), SizedBox(height: 14.v), _buildOrderPrice(context), SizedBox(height: 15.v), _buildOrderTotal(context), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("lbl_payment_method".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 12.v), Align(alignment: Alignment.centerLeft, child: Row(children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 1.v), child: Text("lbl_cash".tr, style: theme.textTheme.bodyMedium)), BlocSelector<AddOrderOneBloc, AddOrderOneState, bool?>(selector: (state) => state.isSelectedSwitch, builder: (context, isSelectedSwitch) {return CustomSwitch(margin: EdgeInsets.only(left: 11.h), value: isSelectedSwitch, onChange: (value) {context.read<AddOrderOneBloc>().add(ChangeSwitchEvent(value: value));});}), Padding(padding: EdgeInsets.only(left: 11.h, top: 3.v, bottom: 1.v), child: Text("lbl_online".tr, style: CustomTextStyles.bodyMediumBlack900))])), SizedBox(height: 5.v)])), bottomNavigationBar: _buildPlaceOrderButton(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 54.v, leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_add_order".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v))]); } 
/// Section Widget
Widget _buildOrderButton(BuildContext context) { return CustomElevatedButton(height: 30.v, width: 100.h, text: "lbl_order_no_124".tr, buttonTextStyle: CustomTextStyles.labelLargeOnPrimaryContainer, alignment: Alignment.centerLeft); } 
/// Section Widget
Widget _buildOrderDate(BuildContext context) { return BlocSelector<AddOrderOneBloc, AddOrderOneState, TextEditingController?>(selector: (state) => state.orderDateController, builder: (context, orderDateController) {return CustomTextFormField(controller: orderDateController, hintText: "lbl_date".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 19.v, 21.h, 19.v), child: CustomImageView(imagePath: ImageConstant.imgVector, height: 18.v, width: 16.h)), suffixConstraints: BoxConstraints(maxHeight: 58.v), contentPadding: EdgeInsets.only(left: 21.h, top: 19.v, bottom: 19.v));}); } 
/// Section Widget
Widget _buildOrderWeight(BuildContext context) { return BlocSelector<AddOrderOneBloc, AddOrderOneState, TextEditingController?>(selector: (state) => state.orderWeightController, builder: (context, orderWeightController) {return CustomTextFormField(width: 358.h, controller: orderWeightController, hintText: "lbl_50kg2".tr, alignment: Alignment.bottomCenter);}); } 
/// Section Widget
Widget _buildOrderWeightStack(BuildContext context) { return SizedBox(height: 206.v, width: 358.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Container(margin: EdgeInsets.only(right: 78.h, bottom: 147.v), padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(left: 5.h, top: 3.v), child: Text("lbl_feed_type".tr, style: theme.textTheme.bodyMedium)), CustomImageView(imagePath: ImageConstant.imgMenu138, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 2.v), onTap: () {onTapImgMenu(context);})]))), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 17.v), decoration: AppDecoration.outlineIndigo.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Text("lbl_feed_company".tr, style: theme.textTheme.bodyMedium)]))), _buildOrderWeight(context), Padding(padding: EdgeInsets.only(right: 1.h), child: CustomIconButton(height: 59.adaptSize, width: 59.adaptSize, padding: EdgeInsets.all(15.h), decoration: IconButtonStyleHelper.fillPrimaryTL10, alignment: Alignment.topRight, child: CustomImageView(imagePath: ImageConstant.imgMaterialSymbolsAdd))), Align(alignment: Alignment.centerRight, child: Container(height: 124.v, width: 118.h, margin: EdgeInsets.only(right: 83.h), child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgPolygon1, height: 14.v, width: 24.h, alignment: Alignment.topRight, margin: EdgeInsets.only(right: 7.h)), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 6.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder6), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_broiler".tr, style: CustomTextStyles.bodySmall12)), SizedBox(height: 6.v), SizedBox(width: 118.h, child: Divider(color: appTheme.gray200)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_deshi".tr, style: CustomTextStyles.bodySmall12)), SizedBox(height: 8.v), SizedBox(width: 118.h, child: Divider(color: appTheme.gray200)), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_layer".tr, style: CustomTextStyles.bodySmall12)), SizedBox(height: 7.v), SizedBox(width: 118.h, child: Divider(color: appTheme.gray200)), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_breeder_farm".tr, style: CustomTextStyles.bodySmall12)), SizedBox(height: 1.v)])))])))])); } 
/// Section Widget
Widget _buildBagQuantity(BuildContext context) { return BlocSelector<AddOrderOneBloc, AddOrderOneState, TextEditingController?>(selector: (state) => state.bagQuantityController, builder: (context, bagQuantityController) {return CustomTextFormField(controller: bagQuantityController, hintText: "lbl_bag_quantity".tr);}); } 
/// Section Widget
Widget _buildOrderPrice(BuildContext context) { return BlocSelector<AddOrderOneBloc, AddOrderOneState, TextEditingController?>(selector: (state) => state.orderPriceController, builder: (context, orderPriceController) {return CustomTextFormField(controller: orderPriceController, hintText: "lbl_bag_price".tr);}); } 
/// Section Widget
Widget _buildOrderTotal(BuildContext context) { return BlocSelector<AddOrderOneBloc, AddOrderOneState, TextEditingController?>(selector: (state) => state.orderTotalController, builder: (context, orderTotalController) {return CustomTextFormField(controller: orderTotalController, hintText: "lbl_total".tr, textInputAction: TextInputAction.done);}); } 
/// Section Widget
Widget _buildPlaceOrderButton(BuildContext context) { return CustomElevatedButton(text: "lbl_place_order".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v)); } 
/// Navigates to the addOrderScreen when the action is triggered.
onTapImgMenu(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addOrderScreen, ); } 
 }
