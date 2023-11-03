import 'bloc/empty_batches_bloc.dart';
import 'models/empty_batches_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmptyBatchesPage extends StatefulWidget {
  const EmptyBatchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyBatchesPageState createState() => EmptyBatchesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<EmptyBatchesBloc>(
      create: (context) => EmptyBatchesBloc(EmptyBatchesState(
        emptyBatchesModelObj: EmptyBatchesModel(),
      ))
        ..add(EmptyBatchesInitialEvent()),
      child: EmptyBatchesPage(),
    );
  }
}

class EmptyBatchesPageState extends State<EmptyBatchesPage>
    with AutomaticKeepAliveClientMixin<EmptyBatchesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<EmptyBatchesBloc, EmptyBatchesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 41.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 60.h),
                            child: Text(
                              "msg_no_batches_created".tr,
                              style: CustomTextStyles.titleMediumSemiBold,
                            ),
                          ),
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
                                  "msg_below_to_create".tr,
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
