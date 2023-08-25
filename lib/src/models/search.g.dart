// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Search _$$_SearchFromJson(Map<String, dynamic> json) => _$_Search(
      tracks: Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchToJson(_$_Search instance) => <String, dynamic>{
      'tracks': instance.tracks,
      'paging': instance.paging,
      'summary': instance.summary,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      offset: json['offset'] as int,
      limit: json['limit'] as int,
      previous: json['previous'],
      next: json['next'] as String,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'previous': instance.previous,
      'next': instance.next,
    };

_$_Summary _$$_SummaryFromJson(Map<String, dynamic> json) => _$_Summary(
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_SummaryToJson(_$_Summary instance) =>
    <String, dynamic>{
      'total': instance.total,
    };

_$_Tracks _$$_TracksFromJson(Map<String, dynamic> json) => _$_Tracks(
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      summary: Summary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TracksToJson(_$_Tracks instance) => <String, dynamic>{
      'data': instance.data,
      'paging': instance.paging,
      'summary': instance.summary,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as String,
      name: json['name'] as String,
      duration: json['duration'] as int,
      isrc: json['isrc'] as String,
      url: json['url'] as String,
      track_number: json['track_number'] as int,
      explicitness: json['explicitness'] as bool,
      available_territories: (json['available_territories'] as List<dynamic>)
          .map((e) => $enumDecode(_$AvailableTerritoryEnumMap, e))
          .toList(),
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'duration': instance.duration,
      'isrc': instance.isrc,
      'url': instance.url,
      'track_number': instance.track_number,
      'explicitness': instance.explicitness,
      'available_territories': instance.available_territories
          .map((e) => _$AvailableTerritoryEnumMap[e]!)
          .toList(),
      'album': instance.album,
    };

const _$AvailableTerritoryEnumMap = {
  AvailableTerritory.HK: 'HK',
  AvailableTerritory.JP: 'JP',
  AvailableTerritory.MY: 'MY',
  AvailableTerritory.SG: 'SG',
  AvailableTerritory.TW: 'TW',
};

_$_Album _$$_AlbumFromJson(Map<String, dynamic> json) => _$_Album(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      explicitness: json['explicitness'] as bool,
      available_territories: (json['available_territories'] as List<dynamic>)
          .map((e) => $enumDecode(_$AvailableTerritoryEnumMap, e))
          .toList(),
      release_date: DateTime.parse(json['release_date'] as String),
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      artist: Artist.fromJson(json['artist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AlbumToJson(_$_Album instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'explicitness': instance.explicitness,
      'available_territories': instance.available_territories
          .map((e) => _$AvailableTerritoryEnumMap[e]!)
          .toList(),
      'release_date': instance.release_date.toIso8601String(),
      'images': instance.images,
      'artist': instance.artist,
    };

_$_Artist _$$_ArtistFromJson(Map<String, dynamic> json) => _$_Artist(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ArtistToJson(_$_Artist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'images': instance.images,
    };

_$_Image _$$_ImageFromJson(Map<String, dynamic> json) => _$_Image(
      height: json['height'] as int,
      width: json['width'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ImageToJson(_$_Image instance) => <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };
