import 'package:assessmenttest/Core/networking/api_error_handler.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_state.freezed.dart';

@freezed
class ListState with _$ListState {
  const factory ListState.initial() = _Initial;
  const factory ListState.itemSelected(Result result) = ItemSelectedState;

//list states

  const factory ListState.listLoaded() = ListLoaded;

  const factory ListState.listSuccess(ListResponseModel listResponseModel) =
      ListSuccess;

  const factory ListState.listError(ErrorHandler errorHandler) = ListError;
}
