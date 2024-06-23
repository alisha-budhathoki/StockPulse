// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockEvent {
  String get interval => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String interval) fetchStockData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String interval)? fetchStockData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String interval)? fetchStockData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStockData value) fetchStockData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchStockData value)? fetchStockData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStockData value)? fetchStockData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockEventCopyWith<StockEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockEventCopyWith<$Res> {
  factory $StockEventCopyWith(
          StockEvent value, $Res Function(StockEvent) then) =
      _$StockEventCopyWithImpl<$Res, StockEvent>;
  @useResult
  $Res call({String interval});
}

/// @nodoc
class _$StockEventCopyWithImpl<$Res, $Val extends StockEvent>
    implements $StockEventCopyWith<$Res> {
  _$StockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchStockDataImplCopyWith<$Res>
    implements $StockEventCopyWith<$Res> {
  factory _$$FetchStockDataImplCopyWith(_$FetchStockDataImpl value,
          $Res Function(_$FetchStockDataImpl) then) =
      __$$FetchStockDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String interval});
}

/// @nodoc
class __$$FetchStockDataImplCopyWithImpl<$Res>
    extends _$StockEventCopyWithImpl<$Res, _$FetchStockDataImpl>
    implements _$$FetchStockDataImplCopyWith<$Res> {
  __$$FetchStockDataImplCopyWithImpl(
      _$FetchStockDataImpl _value, $Res Function(_$FetchStockDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interval = null,
  }) {
    return _then(_$FetchStockDataImpl(
      null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchStockDataImpl implements FetchStockData {
  const _$FetchStockDataImpl(this.interval);

  @override
  final String interval;

  @override
  String toString() {
    return 'StockEvent.fetchStockData(interval: $interval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchStockDataImpl &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchStockDataImplCopyWith<_$FetchStockDataImpl> get copyWith =>
      __$$FetchStockDataImplCopyWithImpl<_$FetchStockDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String interval) fetchStockData,
  }) {
    return fetchStockData(interval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String interval)? fetchStockData,
  }) {
    return fetchStockData?.call(interval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String interval)? fetchStockData,
    required TResult orElse(),
  }) {
    if (fetchStockData != null) {
      return fetchStockData(interval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchStockData value) fetchStockData,
  }) {
    return fetchStockData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchStockData value)? fetchStockData,
  }) {
    return fetchStockData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchStockData value)? fetchStockData,
    required TResult orElse(),
  }) {
    if (fetchStockData != null) {
      return fetchStockData(this);
    }
    return orElse();
  }
}

abstract class FetchStockData implements StockEvent {
  const factory FetchStockData(final String interval) = _$FetchStockDataImpl;

  @override
  String get interval;
  @override
  @JsonKey(ignore: true)
  _$$FetchStockDataImplCopyWith<_$FetchStockDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
