import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/failure.dart';

part 'data_state.freezed.dart';

@freezed
class DataState<T> with _$DataState<T> {
  const factory DataState.initial() = _Initial;
  const factory DataState.pending([double? percentage]) = _Pending;
  const factory DataState.failure(Failure failure) = _Failure;
  const factory DataState.complete(T data) = _Complete;
}
