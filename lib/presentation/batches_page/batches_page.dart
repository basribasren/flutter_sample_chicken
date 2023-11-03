import '../batches_page/widgets/userprofilerow_item_widget.dart';
import 'bloc/batches_bloc.dart';
import 'models/batches_model.dart';
import 'models/userprofilerow_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BatchesPage extends StatefulWidget {
  const BatchesPage({Key? key})
      : super(
          key: key,
        );

  @override
  BatchesPageState createState() => BatchesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BatchesBloc>(
      create: (context) => BatchesBloc(BatchesState(
        batchesModelObj: BatchesModel(),
      ))
        ..add(BatchesInitialEvent()),
      child: BatchesPage(),
    );
  }
}

class BatchesPageState extends State<BatchesPage>
    with AutomaticKeepAliveClientMixin<BatchesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildTotalBatchesFive(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalBatchesFive(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 62.h),
          child: Text(
            "msg_total_batches_5".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        SizedBox(height: 15.v),
        BlocSelector<BatchesBloc, BatchesState, BatchesModel?>(
          selector: (state) => state.batchesModelObj,
          builder: (context, batchesModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5.v),
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
              itemCount: batchesModelObj?.userprofilerowItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofilerowItemModel model =
                    batchesModelObj?.userprofilerowItemList[index] ??
                        UserprofilerowItemModel();
                return UserprofilerowItemWidget(
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
