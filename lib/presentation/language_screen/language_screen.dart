import '../language_screen/widgets/languageoptions_item_widget.dart';import 'bloc/language_bloc.dart';import 'models/language_model.dart';import 'models/languageoptions_item_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_title.dart';import 'package:basri_s_application4/widgets/app_bar/appbar_trailing_image.dart';import 'package:basri_s_application4/widgets/app_bar/custom_app_bar.dart';import 'package:basri_s_application4/widgets/custom_search_view.dart';import 'package:flutter/material.dart';class LanguageScreen extends StatelessWidget {const LanguageScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LanguageBloc>(create: (context) => LanguageBloc(LanguageState(languageModelObj: LanguageModel()))..add(LanguageInitialEvent()), child: LanguageScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 17.v), child: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 17.h), child: BlocSelector<LanguageBloc, LanguageState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "lbl_search_language".tr);})), SizedBox(height: 14.v), Divider(), SizedBox(height: 8.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 27.h), child: Text("lbl_current".tr, style: theme.textTheme.bodyLarge))), SizedBox(height: 10.v), Column(children: [_buildLanguageOptions(context), CustomImageView(imagePath: ImageConstant.imgGroup4620x46, height: 620.v, width: 46.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 30.h)), Divider(), SizedBox(height: 73.v), Divider(), SizedBox(height: 73.v), Divider(), SizedBox(height: 73.v), Divider(), SizedBox(height: 73.v), Divider(), SizedBox(height: 74.v), Divider(), SizedBox(height: 73.v), Divider(), SizedBox(height: 73.v), Divider()]), SizedBox(height: 22.v), Divider()]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 37.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrow1, margin: EdgeInsets.only(left: 19.h, top: 19.v, bottom: 18.v), onTap: () {onTapArrowOne(context);}), title: AppbarTitle(text: "lbl_language".tr, margin: EdgeInsets.only(left: 26.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgDots1, margin: EdgeInsets.fromLTRB(16.h, 12.v, 16.h, 21.v))]); } 
/// Section Widget
Widget _buildLanguageOptions(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 2.h, right: 5.h), child: BlocSelector<LanguageBloc, LanguageState, LanguageModel?>(selector: (state) => state.languageModelObj, builder: (context, languageModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 33.v);}, itemCount: languageModelObj?.languageoptionsItemList.length ?? 0, itemBuilder: (context, index) {LanguageoptionsItemModel model = languageModelObj?.languageoptionsItemList[index] ?? LanguageoptionsItemModel(); return LanguageoptionsItemWidget(model);});})); } 
/// Navigates to the farmSettingsScreen when the action is triggered.
onTapArrowOne(BuildContext context) { NavigatorService.pushNamed(AppRoutes.farmSettingsScreen, ); } 
 }
