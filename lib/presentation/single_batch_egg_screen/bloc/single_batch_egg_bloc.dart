import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application4/presentation/single_batch_egg_screen/models/single_batch_egg_model.dart';
part 'single_batch_egg_event.dart';
part 'single_batch_egg_state.dart';

/// A bloc that manages the state of a SingleBatchEgg according to the event that is dispatched to it.
class SingleBatchEggBloc
    extends Bloc<SingleBatchEggEvent, SingleBatchEggState> {
  SingleBatchEggBloc(SingleBatchEggState initialState) : super(initialState) {
    on<SingleBatchEggInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SingleBatchEggInitialEvent event,
    Emitter<SingleBatchEggState> emit,
  ) async {
    emit(state.copyWith(
      dateEditTextController: TextEditingController(),
      eggTrayCollectionEditTextController: TextEditingController(),
      pulletEggsEditTextController: TextEditingController(),
      brokenEggsEditTextController: TextEditingController(),
      descriptionEditTextController: TextEditingController(),
    ));
  }
}
