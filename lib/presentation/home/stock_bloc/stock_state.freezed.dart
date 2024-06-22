// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StockViewModel stocks) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StockViewModel stocks)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StockViewModel stocks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockInitial value) initial,
    required TResult Function(StockLoading value) loading,
    required TResult Function(StockLoaded value) loaded,
    required TResult Function(StockError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockInitial value)? initial,
    TResult? Function(StockLoading value)? loading,
    TResult? Function(StockLoaded value)? loaded,
    TResult? Function(StockError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockInitial value)? initial,
    TResult Function(StockLoading value)? loading,
    TResult Function(StockLoaded value)? loaded,
    TResult Function(StockError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StockInitialImplCopyWith<$Res> {
  factory _$$StockInitialImplCopyWith(
          _$StockInitialImpl value, $Res Function(_$StockInitialImpl) then) =
      __$$StockInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StockInitialImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockInitialImpl>
    implements _$$StockInitialImplCopyWith<$Res> {
  __$$StockInitialImplCopyWithImpl(
      _$StockInitialImpl _value, $Res Function(_$StockInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StockInitialImpl implements StockInitial {
  const _$StockInitialImpl();

  @override
  String toString() {
    return 'StockState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StockInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StockViewModel stocks) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StockViewModel stocks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StockViewModel stocks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockInitial value) initial,
    required TResult Function(StockLoading value) loading,
    required TResult Function(StockLoaded value) loaded,
    required TResult Function(StockError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockInitial value)? initial,
    TResult? Function(StockLoading value)? loading,
    TResult? Function(StockLoaded value)? loaded,
    TResult? Function(StockError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockInitial value)? initial,
    TResult Function(StockLoading value)? loading,
    TResult Function(StockLoaded value)? loaded,
    TResult Function(StockError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StockInitial implements StockState {
  const factory StockInitial() = _$StockInitialImpl;
}

/// @nodoc
abstract class _$$StockLoadingImplCopyWith<$Res> {
  factory _$$StockLoadingImplCopyWith(
          _$StockLoadingImpl value, $Res Function(_$StockLoadingImpl) then) =
      __$$StockLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StockLoadingImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockLoadingImpl>
    implements _$$StockLoadingImplCopyWith<$Res> {
  __$$StockLoadingImplCopyWithImpl(
      _$StockLoadingImpl _value, $Res Function(_$StockLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StockLoadingImpl implements StockLoading {
  const _$StockLoadingImpl();

  @override
  String toString() {
    return 'StockState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StockLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StockViewModel stocks) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StockViewModel stocks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StockViewModel stocks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockInitial value) initial,
    required TResult Function(StockLoading value) loading,
    required TResult Function(StockLoaded value) loaded,
    required TResult Function(StockError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockInitial value)? initial,
    TResult? Function(StockLoading value)? loading,
    TResult? Function(StockLoaded value)? loaded,
    TResult? Function(StockError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockInitial value)? initial,
    TResult Function(StockLoading value)? loading,
    TResult Function(StockLoaded value)? loaded,
    TResult Function(StockError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StockLoading implements StockState {
  const factory StockLoading() = _$StockLoadingImpl;
}

/// @nodoc
abstract class _$$StockLoadedImplCopyWith<$Res> {
  factory _$$StockLoadedImplCopyWith(
          _$StockLoadedImpl value, $Res Function(_$StockLoadedImpl) then) =
      __$$StockLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StockViewModel stocks});

  $StockViewModelCopyWith<$Res> get stocks;
}

/// @nodoc
class __$$StockLoadedImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockLoadedImpl>
    implements _$$StockLoadedImplCopyWith<$Res> {
  __$$StockLoadedImplCopyWithImpl(
      _$StockLoadedImpl _value, $Res Function(_$StockLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$StockLoadedImpl(
      null == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as StockViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StockViewModelCopyWith<$Res> get stocks {
    return $StockViewModelCopyWith<$Res>(_value.stocks, (value) {
      return _then(_value.copyWith(stocks: value));
    });
  }
}

/// @nodoc

class _$StockLoadedImpl implements StockLoaded {
  const _$StockLoadedImpl(this.stocks);

  @override
  final StockViewModel stocks;

  @override
  String toString() {
    return 'StockState.loaded(stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockLoadedImpl &&
            (identical(other.stocks, stocks) || other.stocks == stocks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stocks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockLoadedImplCopyWith<_$StockLoadedImpl> get copyWith =>
      __$$StockLoadedImplCopyWithImpl<_$StockLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StockViewModel stocks) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(stocks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StockViewModel stocks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(stocks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StockViewModel stocks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(stocks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockInitial value) initial,
    required TResult Function(StockLoading value) loading,
    required TResult Function(StockLoaded value) loaded,
    required TResult Function(StockError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockInitial value)? initial,
    TResult? Function(StockLoading value)? loading,
    TResult? Function(StockLoaded value)? loaded,
    TResult? Function(StockError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockInitial value)? initial,
    TResult Function(StockLoading value)? loading,
    TResult Function(StockLoaded value)? loaded,
    TResult Function(StockError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StockLoaded implements StockState {
  const factory StockLoaded(final StockViewModel stocks) = _$StockLoadedImpl;

  StockViewModel get stocks;
  @JsonKey(ignore: true)
  _$$StockLoadedImplCopyWith<_$StockLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StockErrorImplCopyWith<$Res> {
  factory _$$StockErrorImplCopyWith(
          _$StockErrorImpl value, $Res Function(_$StockErrorImpl) then) =
      __$$StockErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StockErrorImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockErrorImpl>
    implements _$$StockErrorImplCopyWith<$Res> {
  __$$StockErrorImplCopyWithImpl(
      _$StockErrorImpl _value, $Res Function(_$StockErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StockErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StockErrorImpl implements StockError {
  const _$StockErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StockState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockErrorImplCopyWith<_$StockErrorImpl> get copyWith =>
      __$$StockErrorImplCopyWithImpl<_$StockErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(StockViewModel stocks) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(StockViewModel stocks)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(StockViewModel stocks)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StockInitial value) initial,
    required TResult Function(StockLoading value) loading,
    required TResult Function(StockLoaded value) loaded,
    required TResult Function(StockError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StockInitial value)? initial,
    TResult? Function(StockLoading value)? loading,
    TResult? Function(StockLoaded value)? loaded,
    TResult? Function(StockError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StockInitial value)? initial,
    TResult Function(StockLoading value)? loading,
    TResult Function(StockLoaded value)? loaded,
    TResult Function(StockError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StockError implements StockState {
  const factory StockError(final String message) = _$StockErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$StockErrorImplCopyWith<_$StockErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
