// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockViewModel _$StockViewModelFromJson(Map<String, dynamic> json) {
  return _StockViewModel.fromJson(json);
}

/// @nodoc
mixin _$StockViewModel {
  List<FormattedStockData> get hourly => throw _privateConstructorUsedError;
  List<FormattedStockData> get daily => throw _privateConstructorUsedError;
  List<FormattedStockData> get monthly => throw _privateConstructorUsedError;
  List<FormattedStockData> get yearly => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockViewModelCopyWith<StockViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockViewModelCopyWith<$Res> {
  factory $StockViewModelCopyWith(
          StockViewModel value, $Res Function(StockViewModel) then) =
      _$StockViewModelCopyWithImpl<$Res, StockViewModel>;
  @useResult
  $Res call(
      {List<FormattedStockData> hourly,
      List<FormattedStockData> daily,
      List<FormattedStockData> monthly,
      List<FormattedStockData> yearly});
}

/// @nodoc
class _$StockViewModelCopyWithImpl<$Res, $Val extends StockViewModel>
    implements $StockViewModelCopyWith<$Res> {
  _$StockViewModelCopyWithImpl(this._value, this._then);

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
              as List<FormattedStockData>,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      monthly: null == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      yearly: null == yearly
          ? _value.yearly
          : yearly // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockViewModelImplCopyWith<$Res>
    implements $StockViewModelCopyWith<$Res> {
  factory _$$StockViewModelImplCopyWith(_$StockViewModelImpl value,
          $Res Function(_$StockViewModelImpl) then) =
      __$$StockViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FormattedStockData> hourly,
      List<FormattedStockData> daily,
      List<FormattedStockData> monthly,
      List<FormattedStockData> yearly});
}

/// @nodoc
class __$$StockViewModelImplCopyWithImpl<$Res>
    extends _$StockViewModelCopyWithImpl<$Res, _$StockViewModelImpl>
    implements _$$StockViewModelImplCopyWith<$Res> {
  __$$StockViewModelImplCopyWithImpl(
      _$StockViewModelImpl _value, $Res Function(_$StockViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hourly = null,
    Object? daily = null,
    Object? monthly = null,
    Object? yearly = null,
  }) {
    return _then(_$StockViewModelImpl(
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      monthly: null == monthly
          ? _value._monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      yearly: null == yearly
          ? _value._yearly
          : yearly // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockViewModelImpl implements _StockViewModel {
  const _$StockViewModelImpl(
      {required final List<FormattedStockData> hourly,
      required final List<FormattedStockData> daily,
      required final List<FormattedStockData> monthly,
      required final List<FormattedStockData> yearly})
      : _hourly = hourly,
        _daily = daily,
        _monthly = monthly,
        _yearly = yearly;

  factory _$StockViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockViewModelImplFromJson(json);

  final List<FormattedStockData> _hourly;
  @override
  List<FormattedStockData> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  final List<FormattedStockData> _daily;
  @override
  List<FormattedStockData> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  final List<FormattedStockData> _monthly;
  @override
  List<FormattedStockData> get monthly {
    if (_monthly is EqualUnmodifiableListView) return _monthly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthly);
  }

  final List<FormattedStockData> _yearly;
  @override
  List<FormattedStockData> get yearly {
    if (_yearly is EqualUnmodifiableListView) return _yearly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearly);
  }

  @override
  String toString() {
    return 'StockViewModel(hourly: $hourly, daily: $daily, monthly: $monthly, yearly: $yearly)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockViewModelImpl &&
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
  _$$StockViewModelImplCopyWith<_$StockViewModelImpl> get copyWith =>
      __$$StockViewModelImplCopyWithImpl<_$StockViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockViewModelImplToJson(
      this,
    );
  }
}

abstract class _StockViewModel implements StockViewModel {
  const factory _StockViewModel(
      {required final List<FormattedStockData> hourly,
      required final List<FormattedStockData> daily,
      required final List<FormattedStockData> monthly,
      required final List<FormattedStockData> yearly}) = _$StockViewModelImpl;

  factory _StockViewModel.fromJson(Map<String, dynamic> json) =
      _$StockViewModelImpl.fromJson;

  @override
  List<FormattedStockData> get hourly;
  @override
  List<FormattedStockData> get daily;
  @override
  List<FormattedStockData> get monthly;
  @override
  List<FormattedStockData> get yearly;
  @override
  @JsonKey(ignore: true)
  _$$StockViewModelImplCopyWith<_$StockViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormattedStockData _$FormattedStockDataFromJson(Map<String, dynamic> json) {
  return _FormattedStockData.fromJson(json);
}

/// @nodoc
mixin _$FormattedStockData {
  DateTime get time => throw _privateConstructorUsedError;
  String get formattedTime => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormattedStockDataCopyWith<FormattedStockData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedStockDataCopyWith<$Res> {
  factory $FormattedStockDataCopyWith(
          FormattedStockData value, $Res Function(FormattedStockData) then) =
      _$FormattedStockDataCopyWithImpl<$Res, FormattedStockData>;
  @useResult
  $Res call({DateTime time, String formattedTime, double price});
}

/// @nodoc
class _$FormattedStockDataCopyWithImpl<$Res, $Val extends FormattedStockData>
    implements $FormattedStockDataCopyWith<$Res> {
  _$FormattedStockDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? formattedTime = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormattedStockDataImplCopyWith<$Res>
    implements $FormattedStockDataCopyWith<$Res> {
  factory _$$FormattedStockDataImplCopyWith(_$FormattedStockDataImpl value,
          $Res Function(_$FormattedStockDataImpl) then) =
      __$$FormattedStockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time, String formattedTime, double price});
}

/// @nodoc
class __$$FormattedStockDataImplCopyWithImpl<$Res>
    extends _$FormattedStockDataCopyWithImpl<$Res, _$FormattedStockDataImpl>
    implements _$$FormattedStockDataImplCopyWith<$Res> {
  __$$FormattedStockDataImplCopyWithImpl(_$FormattedStockDataImpl _value,
      $Res Function(_$FormattedStockDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? formattedTime = null,
    Object? price = null,
  }) {
    return _then(_$FormattedStockDataImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormattedStockDataImpl implements _FormattedStockData {
  const _$FormattedStockDataImpl(
      {required this.time, required this.formattedTime, required this.price});

  factory _$FormattedStockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormattedStockDataImplFromJson(json);

  @override
  final DateTime time;
  @override
  final String formattedTime;
  @override
  final double price;

  @override
  String toString() {
    return 'FormattedStockData(time: $time, formattedTime: $formattedTime, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedStockDataImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, formattedTime, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormattedStockDataImplCopyWith<_$FormattedStockDataImpl> get copyWith =>
      __$$FormattedStockDataImplCopyWithImpl<_$FormattedStockDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormattedStockDataImplToJson(
      this,
    );
  }
}

abstract class _FormattedStockData implements FormattedStockData {
  const factory _FormattedStockData(
      {required final DateTime time,
      required final String formattedTime,
      required final double price}) = _$FormattedStockDataImpl;

  factory _FormattedStockData.fromJson(Map<String, dynamic> json) =
      _$FormattedStockDataImpl.fromJson;

  @override
  DateTime get time;
  @override
  String get formattedTime;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$FormattedStockDataImplCopyWith<_$FormattedStockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
