import '../feed_type_screen/widgets/feedtype_item_widget.dart';
import 'bloc/feed_type_bloc.dart';
import 'models/feed_type_model.dart';
import 'models/feedtype_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class FeedTypeScreen extends StatelessWidget {
  const FeedTypeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FeedTypeBloc>(
      create: (context) => FeedTypeBloc(FeedTypeState(
        feedTypeModelObj: FeedTypeModel(),
      ))
        ..add(FeedTypeInitialEvent()),
      child: FeedTypeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_pre_starter".tr,
                      style: CustomTextStyles.titleMedium17,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  BlocSelector<FeedTypeBloc, FeedTypeState, FeedTypeModel?>(
                    selector: (state) => state.feedTypeModelObj,
                    builder: (context, feedTypeModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 29.5.v),
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300,
                              ),
                            ),
                          );
                        },
                        itemCount:
                            feedTypeModelObj?.feedtypeItemList.length ?? 0,
                        itemBuilder: (context, index) {
                          FeedtypeItemModel model =
                              feedTypeModelObj?.feedtypeItemList[index] ??
                                  FeedtypeItemModel();
                          return FeedtypeItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_starter".tr,
                      style: CustomTextStyles.titleMedium17,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_phase_1".tr,
                      style: CustomTextStyles.titleMedium17,
                    ),
                  ),
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_phase_2".tr,
                      style: CustomTextStyles.titleMedium17,
                    ),
                  ),
                  SizedBox(height: 17.v),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 60,
      width: 60,
      backgroundColor: theme.colorScheme.primary,
      child: CustomImageView(
        imagePath: ImageConstant.imgMaterialSymbolsAdd,
        height: 30.0.v,
        width: 30.0.h,
      ),
    );
  }
}
