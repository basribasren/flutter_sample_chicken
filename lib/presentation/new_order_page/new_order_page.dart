import 'bloc/new_order_bloc.dart';
import 'models/new_order_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NewOrderPage extends StatefulWidget {
  const NewOrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  NewOrderPageState createState() => NewOrderPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NewOrderBloc>(
      create: (context) => NewOrderBloc(NewOrderState(
        newOrderModelObj: NewOrderModel(),
      ))
        ..add(NewOrderInitialEvent()),
      child: NewOrderPage(),
    );
  }
}

class NewOrderPageState extends State<NewOrderPage>
    with AutomaticKeepAliveClientMixin<NewOrderPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NewOrderBloc, NewOrderState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 53.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 76.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_no_orders_added".tr,
                          style: CustomTextStyles.titleMediumSemiBold,
                        ),
                        SizedBox(height: 25.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                              opacity: 0.65,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: 6.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_tap_on".tr,
                                  style: CustomTextStyles
                                      .bodyMediumPoppinsBlack900,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.65,
                              child: CustomIconButton(
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration:
                                    IconButtonStyleHelper.fillPrimaryTL15,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgMaterialSymbolsAdd,
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.65,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.v),
                                child: Text(
                                  "msg_below_to_add_order".tr,
                                  style: CustomTextStyles
                                      .bodyMediumPoppinsBlack900,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
