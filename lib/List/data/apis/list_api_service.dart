import 'package:assessmenttest/Core/networking/api_constants.dart';
import 'package:assessmenttest/List/data/models/list_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'list_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ListApiService {
  factory ListApiService(Dio dio, {String baseUrl}) = _ListApiService;

  @GET(ApiConstants.list)
  Future<ListResponseModel> getlist();

  @GET(ApiConstants.search)
  Future<ListResponseModel> search(
      @Query('query') String query); 
}
