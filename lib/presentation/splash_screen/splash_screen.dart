import 'bloc/splash_bloc.dart';import 'models/splash_model.dart';import 'package:basri_s_application4/core/app_export.dart';import 'package:flutter/material.dart';class SplashScreen extends StatelessWidget {const SplashScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashBloc>(create: (context) => SplashBloc(SplashState(splashModelObj: SplashModel()))..add(SplashInitialEvent()), child: SplashScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgImage1, height: 186.adaptSize, width: 186.adaptSize)]))));}); } 
 }
