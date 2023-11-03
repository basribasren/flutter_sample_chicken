import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/my_ads_two_screen/models/my_ads_two_model.dart';
part 'my_ads_two_event.dart';
part 'my_ads_two_state.dart';

/// A bloc that manages the state of a MyAdsTwo according to the event that is dispatched to it.
class MyAdsTwoBloc extends Bloc<MyAdsTwoEvent, MyAdsTwoState> {
  MyAdsTwoBloc(MyAdsTwoState initialState) : super(initialState) {
    on<MyAdsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyAdsTwoInitialEvent event,
    Emitter<MyAdsTwoState> emit,
  ) async {
    emit(state.copyWith(
      categoryController: TextEditingController(),
      quantityController: TextEditingController(),
      contactNumberController: TextEditingController(),
      stateController: TextEditingController(),
      cityController: TextEditingController(),
      villageController: TextEditingController(),
      descriptionController: TextEditingController(),
    ));
  }
}
