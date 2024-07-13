// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResponseModel _$ListResponseModelFromJson(Map<String, dynamic> json) =>
    ListResponseModel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ListResponseModelToJson(ListResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      adult: json['adult'] as bool?,
      backdrop_path: json['backdrop_path'] as String?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originalLanguage: $enumDecodeNullable(
          _$OriginalLanguageEnumMap, json['originalLanguage']),
      original_title: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      poster_path: json['poster_path'] as String?,
      release_date: json['release_date'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      vote_average: (json['vote_average'] as num?)?.toDouble(),
      vote_count: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': _$OriginalLanguageEnumMap[instance.originalLanguage],
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };

const _$OriginalLanguageEnumMap = {
  OriginalLanguage.BN: 'BN',
  OriginalLanguage.EN: 'EN',
  OriginalLanguage.FR: 'FR',
  OriginalLanguage.KO: 'KO',
};
