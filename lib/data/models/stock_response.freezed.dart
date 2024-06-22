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
  DateTime get time => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

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
  $Res call({DateTime time, double price});
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
    Object? time = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
  $Res call({DateTime time, double price});
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
    Object? time = null,
    Object? price = null,
  }) {
    return _then(_$StockDataImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDataImpl implements _StockData {
  const _$StockDataImpl({required this.time, required this.price});

  factory _$StockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDataImplFromJson(json);

  @override
  final DateTime time;
  @override
  final double price;

  @override
  String toString() {
    return 'StockData(time: $time, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, price);

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
      {required final DateTime time,
      required final double price}) = _$StockDataImpl;

  factory _StockData.fromJson(Map<String, dynamic> json) =
      _$StockDataImpl.fromJson;

  @override
  DateTime get time;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$StockDataImplCopyWith<_$StockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) {
  return _StockResponse.fromJson(json);
}

/// @nodoc
mixin _$StockResponse {
  List<StockData> get hourly => throw _privateConstructorUsedError;
  List<StockData> get daily => throw _privateConstructorUsedError;
  List<StockData> get monthly => throw _privateConstructorUsedError;
  List<StockData> get yearly => throw _privateConstructorUsedError;

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
      {List<StockData> hourly,
      List<StockData> daily,
      List<StockData> monthly,
      List<StockData> yearly});
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
    Object? hourly = null,
    Object? daily = null,
    Object? monthly = null,
    Object? yearly = null,
  }) {
    return _then(_value.copyWith(
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      yearly: null == yearly
          ? _value.yearly
          : yearly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
    ) as $Val);
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
      {List<StockData> hourly,
      List<StockData> daily,
      List<StockData> monthly,
      List<StockData> yearly});
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
    Object? hourly = null,
    Object? daily = null,
    Object? monthly = null,
    Object? yearly = null,
  }) {
    return _then(_$StockResponseImpl(
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      monthly: null == monthly
          ? _value._monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
      yearly: null == yearly
          ? _value._yearly
          : yearly // ignore: cast_nullable_to_non_nullable
              as List<StockData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockResponseImpl implements _StockResponse {
  const _$StockResponseImpl(
      {required final List<StockData> hourly,
      required final List<StockData> daily,
      required final List<StockData> monthly,
      required final List<StockData> yearly})
      : _hourly = hourly,
        _daily = daily,
        _monthly = monthly,
        _yearly = yearly;

  factory _$StockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockResponseImplFromJson(json);

  final List<StockData> _hourly;
  @override
  List<StockData> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  final List<StockData> _daily;
  @override
  List<StockData> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  final List<StockData> _monthly;
  @override
  List<StockData> get monthly {
    if (_monthly is EqualUnmodifiableListView) return _monthly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthly);
  }

  final List<StockData> _yearly;
  @override
  List<StockData> get yearly {
    if (_yearly is EqualUnmodifiableListView) return _yearly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearly);
  }

  @override
  String toString() {
    return 'StockResponse(hourly: $hourly, daily: $daily, monthly: $monthly, yearly: $yearly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockResponseImpl &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily) &&
            const DeepCollectionEquality().equals(other._monthly, _monthly) &&
            const DeepCollectionEquality().equals(other._yearly, _yearly));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily),
      const DeepCollectionEquality().hash(_monthly),
      const DeepCollectionEquality().hash(_yearly));

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
      {required final List<StockData> hourly,
      required final List<StockData> daily,
      required final List<StockData> monthly,
      required final List<StockData> yearly}) = _$StockResponseImpl;

  factory _StockResponse.fromJson(Map<String, dynamic> json) =
      _$StockResponseImpl.fromJson;

  @override
  List<StockData> get hourly;
  @override
  List<StockData> get daily;
  @override
  List<StockData> get monthly;
  @override
  List<StockData> get yearly;
  @override
  @JsonKey(ignore: true)
  _$$StockResponseImplCopyWith<_$StockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
