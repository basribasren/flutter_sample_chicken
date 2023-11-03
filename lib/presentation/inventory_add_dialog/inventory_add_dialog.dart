import 'bloc/inventory_add_bloc.dart';import 'models/inventory_add_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:flutter/material.dart';class InventoryAddDialog extends StatelessWidget {const InventoryAddDialog({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<InventoryAddBloc>(create: (context) => InventoryAddBloc(InventoryAddState(inventoryAddModelObj: InventoryAddModel()))..add(InventoryAddInitialEvent()), child: InventoryAddDialog()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return GestureDetector(onTap: () {onTapSticker(context);}, child: Container(width: 314.h, padding: EdgeInsets.symmetric(horizontal: 52.h, vertical: 57.v), decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.circleBorder22), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgSticker, height: 109.adaptSize, width: 109.adaptSize), SizedBox(height: 44.v), Text("lbl_feed_received2".tr, style: theme.textTheme.headlineMedium), SizedBox(height: 12.v)]))); } 
/// Navigates to the inventoryAddOneScreen when the action is triggered.
onTapSticker(BuildContext context) { NavigatorService.pushNamed(AppRoutes.inventoryAddOneScreen, ); } 
 }
