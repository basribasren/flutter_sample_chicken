import '../batches_sub_user_screen/widgets/userprofile2_item_widget.dart';
import 'bloc/batches_sub_user_bloc.dart';
import 'models/batches_sub_user_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:basri_s_application4/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class BatchesSubUserScreen extends StatelessWidget {
  const BatchesSubUserScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BatchesSubUserBloc>(
      create: (context) => BatchesSubUserBloc(BatchesSubUserState(
        batchesSubUserModelObj: BatchesSubUserModel(),
      ))
        ..add(BatchesSubUserInitialEvent()),
      child: BatchesSubUserScreen(),
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
                children: [
                  Text(
                    "lbl_sub_user".tr,
                    style: CustomTextStyles.titleLargePoppinsBlack900SemiBold,
                  ),
                  SizedBox(height: 22.v),
                  BlocSelector<BatchesSubUserBloc, BatchesSubUserState,
                      BatchesSubUserModel?>(
                    selector: (state) => state.batchesSubUserModelObj,
                    builder: (context, batchesSubUserModelObj) {
                      return ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.5.v),
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
                        itemCount: batchesSubUserModelObj
                                ?.userprofile2ItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          Userprofile2ItemModel model = batchesSubUserModelObj
                                  ?.userprofile2ItemList[index] ??
                              Userprofile2ItemModel();
                          return Userprofile2ItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
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
