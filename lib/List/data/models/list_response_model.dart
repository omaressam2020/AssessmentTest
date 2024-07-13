import 'package:json_annotation/json_annotation.dart';

part 'list_response_model.g.dart';

@JsonSerializable()
class ListResponseModel {
  int? page;
  @JsonKey(name: "results")
  List<Result>? results;
  int? totalPages;
  int? totalResults;

  ListResponseModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory ListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ListResponseModelFromJson(json);
}

@JsonSerializable()
class Result {
  bool? adult;
  String? backdrop_path;
  List<int>? genreIds;
  int? id;
  OriginalLanguage? originalLanguage;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;

  Result({
    this.adult,
    this.backdrop_path,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

enum OriginalLanguage { BN, EN, FR, KO }
