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
  MarketSummaryViewModel get marketSummary =>
      throw _privateConstructorUsedError;
  List<FormattedStockData> get minuteData => throw _privateConstructorUsedError;
  List<FormattedStockData> get hourData => throw _privateConstructorUsedError;
  List<FormattedStockData> get dayData => throw _privateConstructorUsedError;
  List<FormattedStockData> get monthData => throw _privateConstructorUsedError;
  List<FormattedStockData> get yearlyData => throw _privateConstructorUsedError;

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
      {MarketSummaryViewModel marketSummary,
      List<FormattedStockData> minuteData,
      List<FormattedStockData> hourData,
      List<FormattedStockData> dayData,
      List<FormattedStockData> monthData,
      List<FormattedStockData> yearlyData});

  $MarketSummaryViewModelCopyWith<$Res> get marketSummary;
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
    Object? marketSummary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_value.copyWith(
      marketSummary: null == marketSummary
          ? _value.marketSummary
          : marketSummary // ignore: cast_nullable_to_non_nullable
              as MarketSummaryViewModel,
      minuteData: null == minuteData
          ? _value.minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      hourData: null == hourData
          ? _value.hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      dayData: null == dayData
          ? _value.dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      monthData: null == monthData
          ? _value.monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      yearlyData: null == yearlyData
          ? _value.yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MarketSummaryViewModelCopyWith<$Res> get marketSummary {
    return $MarketSummaryViewModelCopyWith<$Res>(_value.marketSummary, (value) {
      return _then(_value.copyWith(marketSummary: value) as $Val);
    });
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
      {MarketSummaryViewModel marketSummary,
      List<FormattedStockData> minuteData,
      List<FormattedStockData> hourData,
      List<FormattedStockData> dayData,
      List<FormattedStockData> monthData,
      List<FormattedStockData> yearlyData});

  @override
  $MarketSummaryViewModelCopyWith<$Res> get marketSummary;
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
    Object? marketSummary = null,
    Object? minuteData = null,
    Object? hourData = null,
    Object? dayData = null,
    Object? monthData = null,
    Object? yearlyData = null,
  }) {
    return _then(_$StockViewModelImpl(
      marketSummary: null == marketSummary
          ? _value.marketSummary
          : marketSummary // ignore: cast_nullable_to_non_nullable
              as MarketSummaryViewModel,
      minuteData: null == minuteData
          ? _value._minuteData
          : minuteData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      hourData: null == hourData
          ? _value._hourData
          : hourData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      dayData: null == dayData
          ? _value._dayData
          : dayData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      monthData: null == monthData
          ? _value._monthData
          : monthData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
      yearlyData: null == yearlyData
          ? _value._yearlyData
          : yearlyData // ignore: cast_nullable_to_non_nullable
              as List<FormattedStockData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockViewModelImpl implements _StockViewModel {
  const _$StockViewModelImpl(
      {required this.marketSummary,
      required final List<FormattedStockData> minuteData,
      required final List<FormattedStockData> hourData,
      required final List<FormattedStockData> dayData,
      required final List<FormattedStockData> monthData,
      required final List<FormattedStockData> yearlyData})
      : _minuteData = minuteData,
        _hourData = hourData,
        _dayData = dayData,
        _monthData = monthData,
        _yearlyData = yearlyData;

  factory _$StockViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockViewModelImplFromJson(json);

  @override
  final MarketSummaryViewModel marketSummary;
  final List<FormattedStockData> _minuteData;
  @override
  List<FormattedStockData> get minuteData {
    if (_minuteData is EqualUnmodifiableListView) return _minuteData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_minuteData);
  }

  final List<FormattedStockData> _hourData;
  @override
  List<FormattedStockData> get hourData {
    if (_hourData is EqualUnmodifiableListView) return _hourData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourData);
  }

  final List<FormattedStockData> _dayData;
  @override
  List<FormattedStockData> get dayData {
    if (_dayData is EqualUnmodifiableListView) return _dayData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayData);
  }

  final List<FormattedStockData> _monthData;
  @override
  List<FormattedStockData> get monthData {
    if (_monthData is EqualUnmodifiableListView) return _monthData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthData);
  }

  final List<FormattedStockData> _yearlyData;
  @override
  List<FormattedStockData> get yearlyData {
    if (_yearlyData is EqualUnmodifiableListView) return _yearlyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyData);
  }

  @override
  String toString() {
    return 'StockViewModel(marketSummary: $marketSummary, minuteData: $minuteData, hourData: $hourData, dayData: $dayData, monthData: $monthData, yearlyData: $yearlyData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockViewModelImpl &&
            (identical(other.marketSummary, marketSummary) ||
                other.marketSummary == marketSummary) &&
            const DeepCollectionEquality()
                .equals(other._minuteData, _minuteData) &&
            const DeepCollectionEquality().equals(other._hourData, _hourData) &&
            const DeepCollectionEquality().equals(other._dayData, _dayData) &&
            const DeepCollectionEquality()
                .equals(other._monthData, _monthData) &&
            const DeepCollectionEquality()
                .equals(other._yearlyData, _yearlyData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      marketSummary,
      const DeepCollectionEquality().hash(_minuteData),
      const DeepCollectionEquality().hash(_hourData),
      const DeepCollectionEquality().hash(_dayData),
      const DeepCollectionEquality().hash(_monthData),
      const DeepCollectionEquality().hash(_yearlyData));

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
          {required final MarketSummaryViewModel marketSummary,
          required final List<FormattedStockData> minuteData,
          required final List<FormattedStockData> hourData,
          required final List<FormattedStockData> dayData,
          required final List<FormattedStockData> monthData,
          required final List<FormattedStockData> yearlyData}) =
      _$StockViewModelImpl;

  factory _StockViewModel.fromJson(Map<String, dynamic> json) =
      _$StockViewModelImpl.fromJson;

  @override
  MarketSummaryViewModel get marketSummary;
  @override
  List<FormattedStockData> get minuteData;
  @override
  List<FormattedStockData> get hourData;
  @override
  List<FormattedStockData> get dayData;
  @override
  List<FormattedStockData> get monthData;
  @override
  List<FormattedStockData> get yearlyData;
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
  DateTime get date => throw _privateConstructorUsedError;
  String get formattedTime => throw _privateConstructorUsedError;
  double get index => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get percent_change => throw _privateConstructorUsedError;

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
  $Res call(
      {DateTime date,
      String formattedTime,
      double index,
      double change,
      double percent_change});
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
    Object? date = null,
    Object? formattedTime = null,
    Object? index = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$FormattedStockDataImplCopyWith<$Res>
    implements $FormattedStockDataCopyWith<$Res> {
  factory _$$FormattedStockDataImplCopyWith(_$FormattedStockDataImpl value,
          $Res Function(_$FormattedStockDataImpl) then) =
      __$$FormattedStockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String formattedTime,
      double index,
      double change,
      double percent_change});
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
    Object? date = null,
    Object? formattedTime = null,
    Object? index = null,
    Object? change = null,
    Object? percent_change = null,
  }) {
    return _then(_$FormattedStockDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      formattedTime: null == formattedTime
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$FormattedStockDataImpl implements _FormattedStockData {
  const _$FormattedStockDataImpl(
      {required this.date,
      required this.formattedTime,
      required this.index,
      required this.change,
      required this.percent_change});

  factory _$FormattedStockDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormattedStockDataImplFromJson(json);

  @override
  final DateTime date;
  @override
  final String formattedTime;
  @override
  final double index;
  @override
  final double change;
  @override
  final double percent_change;

  @override
  String toString() {
    return 'FormattedStockData(date: $date, formattedTime: $formattedTime, index: $index, change: $change, percent_change: $percent_change)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormattedStockDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percent_change, percent_change) ||
                other.percent_change == percent_change));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, formattedTime, index, change, percent_change);

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
      {required final DateTime date,
      required final String formattedTime,
      required final double index,
      required final double change,
      required final double percent_change}) = _$FormattedStockDataImpl;

  factory _FormattedStockData.fromJson(Map<String, dynamic> json) =
      _$FormattedStockDataImpl.fromJson;

  @override
  DateTime get date;
  @override
  String get formattedTime;
  @override
  double get index;
  @override
  double get change;
  @override
  double get percent_change;
  @override
  @JsonKey(ignore: true)
  _$$FormattedStockDataImplCopyWith<_$FormattedStockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarketSummaryViewModel _$MarketSummaryViewModelFromJson(
    Map<String, dynamic> json) {
  return _MarketSummaryViewModel.fromJson(json);
}

/// @nodoc
mixin _$MarketSummaryViewModel {
  String get todayNepse => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  double get percentChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarketSummaryViewModelCopyWith<MarketSummaryViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketSummaryViewModelCopyWith<$Res> {
  factory $MarketSummaryViewModelCopyWith(MarketSummaryViewModel value,
          $Res Function(MarketSummaryViewModel) then) =
      _$MarketSummaryViewModelCopyWithImpl<$Res, MarketSummaryViewModel>;
  @useResult
  $Res call({String todayNepse, double change, double percentChange});
}

/// @nodoc
class _$MarketSummaryViewModelCopyWithImpl<$Res,
        $Val extends MarketSummaryViewModel>
    implements $MarketSummaryViewModelCopyWith<$Res> {
  _$MarketSummaryViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_value.copyWith(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketSummaryViewModelImplCopyWith<$Res>
    implements $MarketSummaryViewModelCopyWith<$Res> {
  factory _$$MarketSummaryViewModelImplCopyWith(
          _$MarketSummaryViewModelImpl value,
          $Res Function(_$MarketSummaryViewModelImpl) then) =
      __$$MarketSummaryViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String todayNepse, double change, double percentChange});
}

/// @nodoc
class __$$MarketSummaryViewModelImplCopyWithImpl<$Res>
    extends _$MarketSummaryViewModelCopyWithImpl<$Res,
        _$MarketSummaryViewModelImpl>
    implements _$$MarketSummaryViewModelImplCopyWith<$Res> {
  __$$MarketSummaryViewModelImplCopyWithImpl(
      _$MarketSummaryViewModelImpl _value,
      $Res Function(_$MarketSummaryViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayNepse = null,
    Object? change = null,
    Object? percentChange = null,
  }) {
    return _then(_$MarketSummaryViewModelImpl(
      todayNepse: null == todayNepse
          ? _value.todayNepse
          : todayNepse // ignore: cast_nullable_to_non_nullable
              as String,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange: null == percentChange
          ? _value.percentChange
          : percentChange // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketSummaryViewModelImpl implements _MarketSummaryViewModel {
  const _$MarketSummaryViewModelImpl(
      {required this.todayNepse,
      required this.change,
      required this.percentChange});

  factory _$MarketSummaryViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketSummaryViewModelImplFromJson(json);

  @override
  final String todayNepse;
  @override
  final double change;
  @override
  final double percentChange;

  @override
  String toString() {
    return 'MarketSummaryViewModel(todayNepse: $todayNepse, change: $change, percentChange: $percentChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketSummaryViewModelImpl &&
            (identical(other.todayNepse, todayNepse) ||
                other.todayNepse == todayNepse) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.percentChange, percentChange) ||
                other.percentChange == percentChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, todayNepse, change, percentChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketSummaryViewModelImplCopyWith<_$MarketSummaryViewModelImpl>
      get copyWith => __$$MarketSummaryViewModelImplCopyWithImpl<
          _$MarketSummaryViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketSummaryViewModelImplToJson(
      this,
    );
  }
}

abstract class _MarketSummaryViewModel implements MarketSummaryViewModel {
  const factory _MarketSummaryViewModel(
      {required final String todayNepse,
      required final double change,
      required final double percentChange}) = _$MarketSummaryViewModelImpl;

  factory _MarketSummaryViewModel.fromJson(Map<String, dynamic> json) =
      _$MarketSummaryViewModelImpl.fromJson;

  @override
  String get todayNepse;
  @override
  double get change;
  @override
  double get percentChange;
  @override
  @JsonKey(ignore: true)
  _$$MarketSummaryViewModelImplCopyWith<_$MarketSummaryViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
