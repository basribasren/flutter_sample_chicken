import '../batches_one_page/widgets/userprofilerow1_item_widget.dart';
import 'bloc/batches_one_bloc.dart';
import 'models/batches_one_model.dart';
import 'models/userprofilerow1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BatchesOnePage extends StatefulWidget {
  const BatchesOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  BatchesOnePageState createState() => BatchesOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BatchesOneBloc>(
      create: (context) => BatchesOneBloc(BatchesOneState(
        batchesOneModelObj: BatchesOneModel(),
      ))
        ..add(BatchesOneInitialEvent()),
      child: BatchesOnePage(),
    );
  }
}

class BatchesOnePageState extends State<BatchesOnePage>
    with AutomaticKeepAliveClientMixin<BatchesOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildTotalBatchesThree(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalBatchesThree(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 62.h),
          child: Text(
            "msg_total_batches_3".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 15.v),
        BlocSelector<BatchesOneBloc, BatchesOneState, BatchesOneModel?>(
          selector: (state) => state.batchesOneModelObj,
          builder: (context, batchesOneModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.0.v),
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
                  batchesOneModelObj?.userprofilerow1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofilerow1ItemModel model =
                    batchesOneModelObj?.userprofilerow1ItemList[index] ??
                        Userprofilerow1ItemModel();
                return Userprofilerow1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
