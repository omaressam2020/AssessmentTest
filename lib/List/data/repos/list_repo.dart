import 'package:assessmenttest/Core/networking/api_error_handler.dart';
import 'package:assessmenttest/Core/networking/api_result.dart';
import 'package:assessmenttest/List/data/apis/list_api_service.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';

final class ListRepo {
  final ListApiService _listapiService;

  ListRepo(this._listapiService);

  Future<ApiResult<ListResponseModel>> getlist() async {
    try {
      final response = await _listapiService.getlist();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<ListResponseModel>> searchInMovieList(String query) async {
    try {
      final response = await _listapiService.search(query);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
