import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

Search searchFromJson(String str) => Search.fromJson(json.decode(str));
String searchToJson(Search data) => json.encode(data.toJson());

@freezed
class Search with _$Search {
  const factory Search({
    required Tracks tracks,
    required Paging paging,
    required Summary summary,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    required int offset,
    required int limit,
    required dynamic previous,
    required String next,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Summary with _$Summary {
  const factory Summary({
    required int total,
  }) = _Summary;

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);
}

@freezed
class Tracks with _$Tracks {
  const factory Tracks({
    required List<Datum> data,
    required Paging paging,
    required Summary summary,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    required String id,
    required String name,
    required int duration,
    required String isrc,
    required String url,
    required int track_number,
    required bool explicitness,
    required List<AvailableTerritory> available_territories,
    required Album album,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    required String id,
    required String name,
    required String url,
    required bool explicitness,
    required List<AvailableTerritory> available_territories,
    required DateTime release_date,
    required List<Image> images,
    required Artist artist,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    required String id,
    required String name,
    required String url,
    required List<Image> images,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    required int height,
    required int width,
    required String url,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

enum AvailableTerritory { HK, JP, MY, SG, TW }

final availableTerritoryValues = EnumValues({
  "HK": AvailableTerritory.HK,
  "JP": AvailableTerritory.JP,
  "MY": AvailableTerritory.MY,
  "SG": AvailableTerritory.SG,
  "TW": AvailableTerritory.TW
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
