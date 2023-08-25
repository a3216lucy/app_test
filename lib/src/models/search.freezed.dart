// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Search _$SearchFromJson(Map<String, dynamic> json) {
  return _Search.fromJson(json);
}

/// @nodoc
mixin _$Search {
  Tracks get tracks => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  Summary get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCopyWith<Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res, Search>;
  @useResult
  $Res call({Tracks tracks, Paging paging, Summary summary});

  $TracksCopyWith<$Res> get tracks;
  $PagingCopyWith<$Res> get paging;
  $SummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$SearchCopyWithImpl<$Res, $Val extends Search>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? paging = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res> get tracks {
    return $TracksCopyWith<$Res>(_value.tracks, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryCopyWith<$Res> get summary {
    return $SummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tracks tracks, Paging paging, Summary summary});

  @override
  $TracksCopyWith<$Res> get tracks;
  @override
  $PagingCopyWith<$Res> get paging;
  @override
  $SummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$SearchCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tracks = null,
    Object? paging = null,
    Object? summary = null,
  }) {
    return _then(_$_Search(
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Search implements _Search {
  const _$_Search(
      {required this.tracks, required this.paging, required this.summary});

  factory _$_Search.fromJson(Map<String, dynamic> json) =>
      _$$_SearchFromJson(json);

  @override
  final Tracks tracks;
  @override
  final Paging paging;
  @override
  final Summary summary;

  @override
  String toString() {
    return 'Search(tracks: $tracks, paging: $paging, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tracks, paging, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchToJson(
      this,
    );
  }
}

abstract class _Search implements Search {
  const factory _Search(
      {required final Tracks tracks,
      required final Paging paging,
      required final Summary summary}) = _$_Search;

  factory _Search.fromJson(Map<String, dynamic> json) = _$_Search.fromJson;

  @override
  Tracks get tracks;
  @override
  Paging get paging;
  @override
  Summary get summary;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call({int offset, int limit, dynamic previous, String next});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? previous = freezed,
    Object? next = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit, dynamic previous, String next});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$_Paging>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
    Object? previous = freezed,
    Object? next = null,
  }) {
    return _then(_$_Paging(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  const _$_Paging(
      {required this.offset,
      required this.limit,
      required this.previous,
      required this.next});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  final int offset;
  @override
  final int limit;
  @override
  final dynamic previous;
  @override
  final String next;

  @override
  String toString() {
    return 'Paging(offset: $offset, limit: $limit, previous: $previous, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit,
      const DeepCollectionEquality().hash(previous), next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  const factory _Paging(
      {required final int offset,
      required final int limit,
      required final dynamic previous,
      required final String next}) = _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  dynamic get previous;
  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call({int total});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$_SummaryCopyWith(
          _$_Summary value, $Res Function(_$_Summary) then) =
      __$$_SummaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total});
}

/// @nodoc
class __$$_SummaryCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$_Summary>
    implements _$$_SummaryCopyWith<$Res> {
  __$$_SummaryCopyWithImpl(_$_Summary _value, $Res Function(_$_Summary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$_Summary(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Summary implements _Summary {
  const _$_Summary({required this.total});

  factory _$_Summary.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryFromJson(json);

  @override
  final int total;

  @override
  String toString() {
    return 'Summary(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Summary &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      __$$_SummaryCopyWithImpl<_$_Summary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryToJson(
      this,
    );
  }
}

abstract class _Summary implements Summary {
  const factory _Summary({required final int total}) = _$_Summary;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$_Summary.fromJson;

  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryCopyWith<_$_Summary> get copyWith =>
      throw _privateConstructorUsedError;
}

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return _Tracks.fromJson(json);
}

/// @nodoc
mixin _$Tracks {
  List<Datum> get data => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  Summary get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksCopyWith<Tracks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksCopyWith<$Res> {
  factory $TracksCopyWith(Tracks value, $Res Function(Tracks) then) =
      _$TracksCopyWithImpl<$Res, Tracks>;
  @useResult
  $Res call({List<Datum> data, Paging paging, Summary summary});

  $PagingCopyWith<$Res> get paging;
  $SummaryCopyWith<$Res> get summary;
}

/// @nodoc
class _$TracksCopyWithImpl<$Res, $Val extends Tracks>
    implements $TracksCopyWith<$Res> {
  _$TracksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? paging = null,
    Object? summary = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryCopyWith<$Res> get summary {
    return $SummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TracksCopyWith<$Res> implements $TracksCopyWith<$Res> {
  factory _$$_TracksCopyWith(_$_Tracks value, $Res Function(_$_Tracks) then) =
      __$$_TracksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum> data, Paging paging, Summary summary});

  @override
  $PagingCopyWith<$Res> get paging;
  @override
  $SummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$_TracksCopyWithImpl<$Res>
    extends _$TracksCopyWithImpl<$Res, _$_Tracks>
    implements _$$_TracksCopyWith<$Res> {
  __$$_TracksCopyWithImpl(_$_Tracks _value, $Res Function(_$_Tracks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? paging = null,
    Object? summary = null,
  }) {
    return _then(_$_Tracks(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tracks implements _Tracks {
  const _$_Tracks(
      {required final List<Datum> data,
      required this.paging,
      required this.summary})
      : _data = data;

  factory _$_Tracks.fromJson(Map<String, dynamic> json) =>
      _$$_TracksFromJson(json);

  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Paging paging;
  @override
  final Summary summary;

  @override
  String toString() {
    return 'Tracks(data: $data, paging: $paging, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tracks &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), paging, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TracksCopyWith<_$_Tracks> get copyWith =>
      __$$_TracksCopyWithImpl<_$_Tracks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TracksToJson(
      this,
    );
  }
}

abstract class _Tracks implements Tracks {
  const factory _Tracks(
      {required final List<Datum> data,
      required final Paging paging,
      required final Summary summary}) = _$_Tracks;

  factory _Tracks.fromJson(Map<String, dynamic> json) = _$_Tracks.fromJson;

  @override
  List<Datum> get data;
  @override
  Paging get paging;
  @override
  Summary get summary;
  @override
  @JsonKey(ignore: true)
  _$$_TracksCopyWith<_$_Tracks> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get isrc => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get track_number => throw _privateConstructorUsedError;
  bool get explicitness => throw _privateConstructorUsedError;
  List<AvailableTerritory> get available_territories =>
      throw _privateConstructorUsedError;
  Album get album => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {String id,
      String name,
      int duration,
      String isrc,
      String url,
      int track_number,
      bool explicitness,
      List<AvailableTerritory> available_territories,
      Album album});

  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? isrc = null,
    Object? url = null,
    Object? track_number = null,
    Object? explicitness = null,
    Object? available_territories = null,
    Object? album = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      track_number: null == track_number
          ? _value.track_number
          : track_number // ignore: cast_nullable_to_non_nullable
              as int,
      explicitness: null == explicitness
          ? _value.explicitness
          : explicitness // ignore: cast_nullable_to_non_nullable
              as bool,
      available_territories: null == available_territories
          ? _value.available_territories
          : available_territories // ignore: cast_nullable_to_non_nullable
              as List<AvailableTerritory>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int duration,
      String isrc,
      String url,
      int track_number,
      bool explicitness,
      List<AvailableTerritory> available_territories,
      Album album});

  @override
  $AlbumCopyWith<$Res> get album;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? isrc = null,
    Object? url = null,
    Object? track_number = null,
    Object? explicitness = null,
    Object? available_territories = null,
    Object? album = null,
  }) {
    return _then(_$_Datum(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      track_number: null == track_number
          ? _value.track_number
          : track_number // ignore: cast_nullable_to_non_nullable
              as int,
      explicitness: null == explicitness
          ? _value.explicitness
          : explicitness // ignore: cast_nullable_to_non_nullable
              as bool,
      available_territories: null == available_territories
          ? _value._available_territories
          : available_territories // ignore: cast_nullable_to_non_nullable
              as List<AvailableTerritory>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required this.id,
      required this.name,
      required this.duration,
      required this.isrc,
      required this.url,
      required this.track_number,
      required this.explicitness,
      required final List<AvailableTerritory> available_territories,
      required this.album})
      : _available_territories = available_territories;

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int duration;
  @override
  final String isrc;
  @override
  final String url;
  @override
  final int track_number;
  @override
  final bool explicitness;
  final List<AvailableTerritory> _available_territories;
  @override
  List<AvailableTerritory> get available_territories {
    if (_available_territories is EqualUnmodifiableListView)
      return _available_territories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_available_territories);
  }

  @override
  final Album album;

  @override
  String toString() {
    return 'Datum(id: $id, name: $name, duration: $duration, isrc: $isrc, url: $url, track_number: $track_number, explicitness: $explicitness, available_territories: $available_territories, album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.track_number, track_number) ||
                other.track_number == track_number) &&
            (identical(other.explicitness, explicitness) ||
                other.explicitness == explicitness) &&
            const DeepCollectionEquality()
                .equals(other._available_territories, _available_territories) &&
            (identical(other.album, album) || other.album == album));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      duration,
      isrc,
      url,
      track_number,
      explicitness,
      const DeepCollectionEquality().hash(_available_territories),
      album);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {required final String id,
      required final String name,
      required final int duration,
      required final String isrc,
      required final String url,
      required final int track_number,
      required final bool explicitness,
      required final List<AvailableTerritory> available_territories,
      required final Album album}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get duration;
  @override
  String get isrc;
  @override
  String get url;
  @override
  int get track_number;
  @override
  bool get explicitness;
  @override
  List<AvailableTerritory> get available_territories;
  @override
  Album get album;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  bool get explicitness => throw _privateConstructorUsedError;
  List<AvailableTerritory> get available_territories =>
      throw _privateConstructorUsedError;
  DateTime get release_date => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;
  Artist get artist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      bool explicitness,
      List<AvailableTerritory> available_territories,
      DateTime release_date,
      List<Image> images,
      Artist artist});

  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? explicitness = null,
    Object? available_territories = null,
    Object? release_date = null,
    Object? images = null,
    Object? artist = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      explicitness: null == explicitness
          ? _value.explicitness
          : explicitness // ignore: cast_nullable_to_non_nullable
              as bool,
      available_territories: null == available_territories
          ? _value.available_territories
          : available_territories // ignore: cast_nullable_to_non_nullable
              as List<AvailableTerritory>,
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArtistCopyWith<$Res> get artist {
    return $ArtistCopyWith<$Res>(_value.artist, (value) {
      return _then(_value.copyWith(artist: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlbumCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$_AlbumCopyWith(_$_Album value, $Res Function(_$_Album) then) =
      __$$_AlbumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      bool explicitness,
      List<AvailableTerritory> available_territories,
      DateTime release_date,
      List<Image> images,
      Artist artist});

  @override
  $ArtistCopyWith<$Res> get artist;
}

/// @nodoc
class __$$_AlbumCopyWithImpl<$Res> extends _$AlbumCopyWithImpl<$Res, _$_Album>
    implements _$$_AlbumCopyWith<$Res> {
  __$$_AlbumCopyWithImpl(_$_Album _value, $Res Function(_$_Album) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? explicitness = null,
    Object? available_territories = null,
    Object? release_date = null,
    Object? images = null,
    Object? artist = null,
  }) {
    return _then(_$_Album(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      explicitness: null == explicitness
          ? _value.explicitness
          : explicitness // ignore: cast_nullable_to_non_nullable
              as bool,
      available_territories: null == available_territories
          ? _value._available_territories
          : available_territories // ignore: cast_nullable_to_non_nullable
              as List<AvailableTerritory>,
      release_date: null == release_date
          ? _value.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      artist: null == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as Artist,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Album implements _Album {
  const _$_Album(
      {required this.id,
      required this.name,
      required this.url,
      required this.explicitness,
      required final List<AvailableTerritory> available_territories,
      required this.release_date,
      required final List<Image> images,
      required this.artist})
      : _available_territories = available_territories,
        _images = images;

  factory _$_Album.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final bool explicitness;
  final List<AvailableTerritory> _available_territories;
  @override
  List<AvailableTerritory> get available_territories {
    if (_available_territories is EqualUnmodifiableListView)
      return _available_territories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_available_territories);
  }

  @override
  final DateTime release_date;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Artist artist;

  @override
  String toString() {
    return 'Album(id: $id, name: $name, url: $url, explicitness: $explicitness, available_territories: $available_territories, release_date: $release_date, images: $images, artist: $artist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Album &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.explicitness, explicitness) ||
                other.explicitness == explicitness) &&
            const DeepCollectionEquality()
                .equals(other._available_territories, _available_territories) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.artist, artist) || other.artist == artist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      url,
      explicitness,
      const DeepCollectionEquality().hash(_available_territories),
      release_date,
      const DeepCollectionEquality().hash(_images),
      artist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      __$$_AlbumCopyWithImpl<_$_Album>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {required final String id,
      required final String name,
      required final String url,
      required final bool explicitness,
      required final List<AvailableTerritory> available_territories,
      required final DateTime release_date,
      required final List<Image> images,
      required final Artist artist}) = _$_Album;

  factory _Album.fromJson(Map<String, dynamic> json) = _$_Album.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  bool get explicitness;
  @override
  List<AvailableTerritory> get available_territories;
  @override
  DateTime get release_date;
  @override
  List<Image> get images;
  @override
  Artist get artist;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumCopyWith<_$_Album> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<Image> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call({String id, String name, String url, List<Image> images});
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArtistCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$_ArtistCopyWith(_$_Artist value, $Res Function(_$_Artist) then) =
      __$$_ArtistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String url, List<Image> images});
}

/// @nodoc
class __$$_ArtistCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$_Artist>
    implements _$$_ArtistCopyWith<$Res> {
  __$$_ArtistCopyWithImpl(_$_Artist _value, $Res Function(_$_Artist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? images = null,
  }) {
    return _then(_$_Artist(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Artist implements _Artist {
  const _$_Artist(
      {required this.id,
      required this.name,
      required this.url,
      required final List<Image> images})
      : _images = images;

  factory _$_Artist.fromJson(Map<String, dynamic> json) =>
      _$$_ArtistFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  final List<Image> _images;
  @override
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Artist(id: $id, name: $name, url: $url, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Artist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, url, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      __$$_ArtistCopyWithImpl<_$_Artist>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArtistToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {required final String id,
      required final String name,
      required final String url,
      required final List<Image> images}) = _$_Artist;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$_Artist.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  List<Image> get images;
  @override
  @JsonKey(ignore: true)
  _$$_ArtistCopyWith<_$_Artist> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call({int height, int width, String url});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$_ImageCopyWith(_$_Image value, $Res Function(_$_Image) then) =
      __$$_ImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int height, int width, String url});
}

/// @nodoc
class __$$_ImageCopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$_Image>
    implements _$$_ImageCopyWith<$Res> {
  __$$_ImageCopyWithImpl(_$_Image _value, $Res Function(_$_Image) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? width = null,
    Object? url = null,
  }) {
    return _then(_$_Image(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Image implements _Image {
  const _$_Image(
      {required this.height, required this.width, required this.url});

  factory _$_Image.fromJson(Map<String, dynamic> json) =>
      _$$_ImageFromJson(json);

  @override
  final int height;
  @override
  final int width;
  @override
  final String url;

  @override
  String toString() {
    return 'Image(height: $height, width: $width, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Image &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      __$$_ImageCopyWithImpl<_$_Image>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {required final int height,
      required final int width,
      required final String url}) = _$_Image;

  factory _Image.fromJson(Map<String, dynamic> json) = _$_Image.fromJson;

  @override
  int get height;
  @override
  int get width;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ImageCopyWith<_$_Image> get copyWith =>
      throw _privateConstructorUsedError;
}
