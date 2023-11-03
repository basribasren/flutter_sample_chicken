import '../single_batch_view_vaccination_page/widgets/vaccinationlist_item_widget.dart';
import 'bloc/single_batch_view_vaccination_bloc.dart';
import 'models/single_batch_view_vaccination_model.dart';
import 'models/vaccinationlist_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchViewVaccinationPage extends StatefulWidget {
  const SingleBatchViewVaccinationPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchViewVaccinationPageState createState() =>
      SingleBatchViewVaccinationPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchViewVaccinationBloc>(
      create: (context) =>
          SingleBatchViewVaccinationBloc(SingleBatchViewVaccinationState(
        singleBatchViewVaccinationModelObj: SingleBatchViewVaccinationModel(),
      ))
            ..add(SingleBatchViewVaccinationInitialEvent()),
      child: SingleBatchViewVaccinationPage(),
    );
  }
}

class SingleBatchViewVaccinationPageState
    extends State<SingleBatchViewVaccinationPage>
    with AutomaticKeepAliveClientMixin<SingleBatchViewVaccinationPage> {
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
              SizedBox(height: 31.v),
              _buildVaccinationList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVaccinationList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 16.h,
      ),
      child: BlocSelector<SingleBatchViewVaccinationBloc,
          SingleBatchViewVaccinationState, SingleBatchViewVaccinationModel?>(
        selector: (state) => state.singleBatchViewVaccinationModelObj,
        builder: (context, singleBatchViewVaccinationModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0.v),
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
            itemCount: singleBatchViewVaccinationModelObj
                    ?.vaccinationlistItemList.length ??
                0,
            itemBuilder: (context, index) {
              VaccinationlistItemModel model =
                  singleBatchViewVaccinationModelObj
                          ?.vaccinationlistItemList[index] ??
                      VaccinationlistItemModel();
              return VaccinationlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
