import '../single_batch_view_vaccination_one_page/widgets/vaccinationlist1_item_widget.dart';
import 'bloc/single_batch_view_vaccination_one_bloc.dart';
import 'models/single_batch_view_vaccination_one_model.dart';
import 'models/vaccinationlist1_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SingleBatchViewVaccinationOnePage extends StatefulWidget {
  const SingleBatchViewVaccinationOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleBatchViewVaccinationOnePageState createState() =>
      SingleBatchViewVaccinationOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SingleBatchViewVaccinationOneBloc>(
      create: (context) =>
          SingleBatchViewVaccinationOneBloc(SingleBatchViewVaccinationOneState(
        singleBatchViewVaccinationOneModelObj:
            SingleBatchViewVaccinationOneModel(),
      ))
            ..add(SingleBatchViewVaccinationOneInitialEvent()),
      child: SingleBatchViewVaccinationOnePage(),
    );
  }
}

class SingleBatchViewVaccinationOnePageState
    extends State<SingleBatchViewVaccinationOnePage>
    with AutomaticKeepAliveClientMixin<SingleBatchViewVaccinationOnePage> {
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
      child: BlocSelector<
          SingleBatchViewVaccinationOneBloc,
          SingleBatchViewVaccinationOneState,
          SingleBatchViewVaccinationOneModel?>(
        selector: (state) => state.singleBatchViewVaccinationOneModelObj,
        builder: (context, singleBatchViewVaccinationOneModelObj) {
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
            itemCount: singleBatchViewVaccinationOneModelObj
                    ?.vaccinationlist1ItemList.length ??
                0,
            itemBuilder: (context, index) {
              Vaccinationlist1ItemModel model =
                  singleBatchViewVaccinationOneModelObj
                          ?.vaccinationlist1ItemList[index] ??
                      Vaccinationlist1ItemModel();
              return Vaccinationlist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
