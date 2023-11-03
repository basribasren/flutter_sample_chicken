// ignore_for_file: must_be_immutable

part of 'batches_sub_user_bloc.dart';

/// Represents the state of BatchesSubUser in the application.
class BatchesSubUserState extends Equatable {
  BatchesSubUserState({this.batchesSubUserModelObj});

  BatchesSubUserModel? batchesSubUserModelObj;

  @override
  List<Object?> get props => [
        batchesSubUserModelObj,
      ];
  BatchesSubUserState copyWith({BatchesSubUserModel? batchesSubUserModelObj}) {
    return BatchesSubUserState(
      batchesSubUserModelObj:
          batchesSubUserModelObj ?? this.batchesSubUserModelObj,
    );
  }
}
