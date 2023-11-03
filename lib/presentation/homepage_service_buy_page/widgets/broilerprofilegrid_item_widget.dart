import '../models/broilerprofilegrid_item_model.dart';
import 'package:basri_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BroilerprofilegridItemWidget extends StatelessWidget {
  BroilerprofilegridItemWidget(
    this.broilerprofilegridItemModelObj, {
    Key? key,
    this.onTapBroilerProfile,
  }) : super(
          key: key,
        );

  BroilerprofilegridItemModel broilerprofilegridItemModelObj;

  VoidCallback? onTapBroilerProfile;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapBroilerProfile!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: broilerprofilegridItemModelObj?.userImage,
                height: 85.v,
                width: 149.h,
                radius: BorderRadius.vertical(
                  top: Radius.circular(7.h),
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  broilerprofilegridItemModelObj.broilerName!,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
              SizedBox(height: 3.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        broilerprofilegridItemModelObj.quantity!,
                        style: CustomTextStyles.bodySmallBluegray40001_1,
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          broilerprofilegridItemModelObj.location!,
                          style: CustomTextStyles.bodySmallBluegray40001_1,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCall1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 90.h,
                      top: 8.v,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
