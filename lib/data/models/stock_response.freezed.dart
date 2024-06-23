// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockData _$StockDataFromJson(Map<String, dynamic> json) {
  return _StockData.fromJson(json);
}

/// @nodoc
mixin _$StockData {
  DateTime get date => throw _privateConstructorUsedError;
  double get index => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get percent_change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDataCopyWith<StockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDataCopyWith<$Res> {
  factory $StockDataCopyWith(StockData value, $Res Function(StockData) then) =
      _$StockDataCopyWithImpl<$Res, StockData>;
  @useResult
  $Res call(
      {DateTime date, double index, double change, double percent_change});
}

/// @nodoc
class _$StockDataCopyWithImpl<$Res, $Val extends StockData>
    implements $StockDataCopyWith<$Res> {
  _$StockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? index = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDataImplCopyWith<$Res>
    implements $StockDataCopyWith<$Res> {
  factory _$$StockDataImplCopyWith(
          _$StockDataImpl value, $Res Function(_$StockDataImpl) then) =
      __$$StockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date, double index, double change, double percent_change});
}

/// @nodoc
class __$$StockDataImplCopyWithImpl<$Res>
    extends _$StockDataCopyWithImpl<$Res, _$StockDataImpl>
    implements _$$StockDataImplCopyWith<$Res> {
  __$$StockDataImplCopyWithImpl(
      _$StockDataImpl _value, $Res Function(_$StockDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? index = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_$StockDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDataImpl implements _StockData {
  const _$StockDataImpl(
      {required this.date,
      required this.index,
      required this.change,
      required this.percent_change});

  factory _$StockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final double index;
  @override
  final double change;
  @override
  final double percent_change;

  @override
  String toString() {
    return 'StockData(date: $date, index: $index, change: $change, percent_change: $percent_change)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percent_change, percent_change) ||
                other.percent_change == percent_change));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, index, change, percent_change);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDataImplCopyWith<_$StockDataImpl> get copyWith =>
      __$$StockDataImplCopyWithImpl<_$StockDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDataImplToJson(
      this,
    );
  }
}

abstract class _StockData implements StockData {
  const factory _StockData(
      {required final DateTime date,
      required final double index,
      required final double change,
      required final double percent_change}) = _$StockDataImpl;

  factory _StockData.fromJson(Map<String, dynamic> json) =
      _$StockDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  double get index;
  @override
  double get change;
  @override
  double get percent_change;
  @override
  @JsonKey(ignore: true)
  _$$StockDataImplCopyWith<_$StockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSummary _$MarketSummaryFromJson(Map<String, dynamic> json) {
  return _MarketSummary.fromJson(json);
}

/// @nodoc
mixin _$MarketSummary {
  String get today_nepse => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get percent_change => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketSummaryCopyWith<MarketSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSummaryCopyWith<$Res> {
  factory $MarketSummaryCopyWith(
          MarketSummary value, $Res Function(MarketSummary) then) =
      _$MarketSummaryCopyWithImpl<$Res, MarketSummary>;
  @useResult
  $Res call({String today_nepse, double change, double percent_change});
}

/// @nodoc
class _$MarketSummaryCopyWithImpl<$Res, $Val extends MarketSummary>
    implements $MarketSummaryCopyWith<$Res> {
  _$MarketSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today_nepse = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_value.copyWith(
      today_nepse: null == today_nepse
          ? _value.today_nepse
          : today_nepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketSummaryImplCopyWith<$Res>
    implements $MarketSummaryCopyWith<$Res> {
  factory _$$MarketSummaryImplCopyWith(
          _$MarketSummaryImpl value, $Res Function(_$MarketSummaryImpl) then) =
      __$$MarketSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String today_nepse, double change, double percent_change});
}

/// @nodoc
class __$$MarketSummaryImplCopyWithImpl<$Res>
    extends _$MarketSummaryCopyWithImpl<$Res, _$MarketSummaryImpl>
    implements _$$MarketSummaryImplCopyWith<$Res> {
  __$$MarketSummaryImplCopyWithImpl(
      _$MarketSummaryImpl _value, $Res Function(_$MarketSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? today_nepse = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_$MarketSummaryImpl(
      today_nepse: null == today_nepse
          ? _value.today_nepse
          : today_nepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percent_change: null == percent_change
          ? _value.percent_change
          : percent_change // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketSummaryImpl implements _MarketSummary {
  const _$MarketSummaryImpl(
      {required this.today_nepse,
      required this.change,
      required this.percent_change});

  factory _$MarketSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSummaryImplFromJson(json);

  @override
  final String today_nepse;
  @override
  final double change;
  @override
  final double percent_change;

  @override
  String toString() {
    return 'MarketSummary(today_nepse: $today_nepse, change: $change, percent_change: $percent_change)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSummaryImpl &&
            (identical(other.today_nepse, today_nepse) ||
                other.today_nepse == today_nepse) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percent_change, percent_change) ||
                other.percent_change == percent_change));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, today_nepse, change, percent_change);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSummaryImplCopyWith<_$MarketSummaryImpl> get copyWith =>
      __$$MarketSummaryImplCopyWithImpl<_$MarketSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSummaryImplToJson(
      this,
    );
  }
}

abstract class _MarketSummary implements MarketSummary {
  const factory _MarketSummary(
      {required final String today_nepse,
      required final double change,
      required final double percent_change}) = _$MarketSummaryImpl;

  factory _MarketSummary.fromJson(Map<String, dynamic> json) =
      _$MarketSummaryImpl.fromJson;

  @override
  String get today_nepse;
  @override
  double get change;
  @override
  double get percent_change;
  @override
  @JsonKey(ignore: true)
  _$$MarketSummaryImplCopyWith<_$MarketSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockResponseData _$StockResponseDataFromJson(Map<String, dynamic> json) {
  return _StockResponseData.fromJson(json);
}

/// @nodoc
mixin _$StockResponseData {
  MarketSummary get market_sumary => throw _privateConstructorUsedError;
  List<StockData> get minute_data => throw _privateConstructorUsedError;
  List<StockData> get hour_data => throw _privateConstructorUsedError;
  List<StockData> get day_data => throw _privateConstructorUsedError;
  List<StockData> get month_data => throw _privateConstructorUsedError;
  List<StockData> get yearly_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockResponseDataCopyWith<StockResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockResponseDataCopyWith<$Res> {
  factory $StockResponseDataCopyWith(
          StockResponseData value, $Res Function(StockResponseData) then) =
      _$StockResponseDataCopyWithImpl<$Res, StockResponseData>;
  @useResult
  $Res call(
      {MarketSummary market_sumary,
      List<StockData> minute_data,
      List<StockData> hour_data,
      List<StockData> day_data,
      List<StockData> month_data,
      List<StockData> yearly_data});

  $MarketSummaryCopyWith<$Res> get market_sumary;
}

/// @nodoc
class _$StockResponseDataCopyWithImpl<$Res, $Val extends StockResponseData>
    implements $StockResponseDataCopyWith<$Res> {
  _$StockResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market_sumary = null,
    Object? minute_data = null,
    Object? hour_data = null,
    Object? day_data = null,
    Object? month_data = null,
    Object? yearly_data = null,
  }) {
    return _then(_value.copyWith(
      market_sumary: null == market_sumary
          ? _value.market_sumary
          : market_sumary // ignore: cast_nullable_to_non_nullable
              as MarketSummary,
      minute_data: null == minute_data
          ? _value.minute_data
          : minute_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      hour_data: null == hour_data
          ? _value.hour_data
          : hour_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      day_data: null == day_data
          ? _value.day_data
          : day_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      month_data: null == month_data
          ? _value.month_data
          : month_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      yearly_data: null == yearly_data
          ? _value.yearly_data
          : yearly_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketSummaryCopyWith<$Res> get market_sumary {
    return $MarketSummaryCopyWith<$Res>(_value.market_sumary, (value) {
      return _then(_value.copyWith(market_sumary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockResponseDataImplCopyWith<$Res>
    implements $StockResponseDataCopyWith<$Res> {
  factory _$$StockResponseDataImplCopyWith(_$StockResponseDataImpl value,
          $Res Function(_$StockResponseDataImpl) then) =
      __$$StockResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MarketSummary market_sumary,
      List<StockData> minute_data,
      List<StockData> hour_data,
      List<StockData> day_data,
      List<StockData> month_data,
      List<StockData> yearly_data});

  @override
  $MarketSummaryCopyWith<$Res> get market_sumary;
}

/// @nodoc
class __$$StockResponseDataImplCopyWithImpl<$Res>
    extends _$StockResponseDataCopyWithImpl<$Res, _$StockResponseDataImpl>
    implements _$$StockResponseDataImplCopyWith<$Res> {
  __$$StockResponseDataImplCopyWithImpl(_$StockResponseDataImpl _value,
      $Res Function(_$StockResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? market_sumary = null,
    Object? minute_data = null,
    Object? hour_data = null,
    Object? day_data = null,
    Object? month_data = null,
    Object? yearly_data = null,
  }) {
    return _then(_$StockResponseDataImpl(
      market_sumary: null == market_sumary
          ? _value.market_sumary
          : market_sumary // ignore: cast_nullable_to_non_nullable
              as MarketSummary,
      minute_data: null == minute_data
          ? _value._minute_data
          : minute_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      hour_data: null == hour_data
          ? _value._hour_data
          : hour_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      day_data: null == day_data
          ? _value._day_data
          : day_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      month_data: null == month_data
          ? _value._month_data
          : month_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      yearly_data: null == yearly_data
          ? _value._yearly_data
          : yearly_data // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockResponseDataImpl implements _StockResponseData {
  const _$StockResponseDataImpl(
      {required this.market_sumary,
      required final List<StockData> minute_data,
      required final List<StockData> hour_data,
      required final List<StockData> day_data,
      required final List<StockData> month_data,
      required final List<StockData> yearly_data})
      : _minute_data = minute_data,
        _hour_data = hour_data,
        _day_data = day_data,
        _month_data = month_data,
        _yearly_data = yearly_data;

  factory _$StockResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockResponseDataImplFromJson(json);

  @override
  final MarketSummary market_sumary;
  final List<StockData> _minute_data;
  @override
  List<StockData> get minute_data {
    if (_minute_data is EqualUnmodifiableListView) return _minute_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minute_data);
  }

  final List<StockData> _hour_data;
  @override
  List<StockData> get hour_data {
    if (_hour_data is EqualUnmodifiableListView) return _hour_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour_data);
  }

  final List<StockData> _day_data;
  @override
  List<StockData> get day_data {
    if (_day_data is EqualUnmodifiableListView) return _day_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_day_data);
  }

  final List<StockData> _month_data;
  @override
  List<StockData> get month_data {
    if (_month_data is EqualUnmodifiableListView) return _month_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_month_data);
  }

  final List<StockData> _yearly_data;
  @override
  List<StockData> get yearly_data {
    if (_yearly_data is EqualUnmodifiableListView) return _yearly_data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearly_data);
  }

  @override
  String toString() {
    return 'StockResponseData(market_sumary: $market_sumary, minute_data: $minute_data, hour_data: $hour_data, day_data: $day_data, month_data: $month_data, yearly_data: $yearly_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockResponseDataImpl &&
            (identical(other.market_sumary, market_sumary) ||
                other.market_sumary == market_sumary) &&
            const DeepCollectionEquality()
                .equals(other._minute_data, _minute_data) &&
            const DeepCollectionEquality()
                .equals(other._hour_data, _hour_data) &&
            const DeepCollectionEquality().equals(other._day_data, _day_data) &&
            const DeepCollectionEquality()
                .equals(other._month_data, _month_data) &&
            const DeepCollectionEquality()
                .equals(other._yearly_data, _yearly_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      market_sumary,
      const DeepCollectionEquality().hash(_minute_data),
      const DeepCollectionEquality().hash(_hour_data),
      const DeepCollectionEquality().hash(_day_data),
      const DeepCollectionEquality().hash(_month_data),
      const DeepCollectionEquality().hash(_yearly_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockResponseDataImplCopyWith<_$StockResponseDataImpl> get copyWith =>
      __$$StockResponseDataImplCopyWithImpl<_$StockResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockResponseDataImplToJson(
      this,
    );
  }
}

abstract class _StockResponseData implements StockResponseData {
  const factory _StockResponseData(
      {required final MarketSummary market_sumary,
      required final List<StockData> minute_data,
      required final List<StockData> hour_data,
      required final List<StockData> day_data,
      required final List<StockData> month_data,
      required final List<StockData> yearly_data}) = _$StockResponseDataImpl;

  factory _StockResponseData.fromJson(Map<String, dynamic> json) =
      _$StockResponseDataImpl.fromJson;

  @override
  MarketSummary get market_sumary;
  @override
  List<StockData> get minute_data;
  @override
  List<StockData> get hour_data;
  @override
  List<StockData> get day_data;
  @override
  List<StockData> get month_data;
  @override
  List<StockData> get yearly_data;
  @override
  @JsonKey(ignore: true)
  _$$StockResponseDataImplCopyWith<_$StockResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) {
  return _StockResponse.fromJson(json);
}

/// @nodoc
mixin _$StockResponse {
  String get response_code => throw _privateConstructorUsedError;
  String get response_message => throw _privateConstructorUsedError;
  StockResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockResponseCopyWith<StockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockResponseCopyWith<$Res> {
  factory $StockResponseCopyWith(
          StockResponse value, $Res Function(StockResponse) then) =
      _$StockResponseCopyWithImpl<$Res, StockResponse>;
  @useResult
  $Res call(
      {String response_code, String response_message, StockResponseData data});

  $StockResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$StockResponseCopyWithImpl<$Res, $Val extends StockResponse>
    implements $StockResponseCopyWith<$Res> {
  _$StockResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? response_message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as String,
      response_message: null == response_message
          ? _value.response_message
          : response_message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockResponseDataCopyWith<$Res> get data {
    return $StockResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockResponseImplCopyWith<$Res>
    implements $StockResponseCopyWith<$Res> {
  factory _$$StockResponseImplCopyWith(
          _$StockResponseImpl value, $Res Function(_$StockResponseImpl) then) =
      __$$StockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String response_code, String response_message, StockResponseData data});

  @override
  $StockResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$StockResponseImplCopyWithImpl<$Res>
    extends _$StockResponseCopyWithImpl<$Res, _$StockResponseImpl>
    implements _$$StockResponseImplCopyWith<$Res> {
  __$$StockResponseImplCopyWithImpl(
      _$StockResponseImpl _value, $Res Function(_$StockResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response_code = null,
    Object? response_message = null,
    Object? data = null,
  }) {
    return _then(_$StockResponseImpl(
      response_code: null == response_code
          ? _value.response_code
          : response_code // ignore: cast_nullable_to_non_nullable
              as String,
      response_message: null == response_message
          ? _value.response_message
          : response_message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StockResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockResponseImpl implements _StockResponse {
  const _$StockResponseImpl(
      {required this.response_code,
      required this.response_message,
      required this.data});

  factory _$StockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockResponseImplFromJson(json);

  @override
  final String response_code;
  @override
  final String response_message;
  @override
  final StockResponseData data;

  @override
  String toString() {
    return 'StockResponse(response_code: $response_code, response_message: $response_message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockResponseImpl &&
            (identical(other.response_code, response_code) ||
                other.response_code == response_code) &&
            (identical(other.response_message, response_message) ||
                other.response_message == response_message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, response_code, response_message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockResponseImplCopyWith<_$StockResponseImpl> get copyWith =>
      __$$StockResponseImplCopyWithImpl<_$StockResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockResponseImplToJson(
      this,
    );
  }
}

abstract class _StockResponse implements StockResponse {
  const factory _StockResponse(
      {required final String response_code,
      required final String response_message,
      required final StockResponseData data}) = _$StockResponseImpl;

  factory _StockResponse.fromJson(Map<String, dynamic> json) =
      _$StockResponseImpl.fromJson;

  @override
  String get response_code;
  @override
  String get response_message;
  @override
  StockResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$StockResponseImplCopyWith<_$StockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
