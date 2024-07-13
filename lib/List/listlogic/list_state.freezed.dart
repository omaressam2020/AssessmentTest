// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ItemSelectedStateImplCopyWith<$Res> {
  factory _$$ItemSelectedStateImplCopyWith(_$ItemSelectedStateImpl value,
          $Res Function(_$ItemSelectedStateImpl) then) =
      __$$ItemSelectedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Result result});
}

/// @nodoc
class __$$ItemSelectedStateImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ItemSelectedStateImpl>
    implements _$$ItemSelectedStateImplCopyWith<$Res> {
  __$$ItemSelectedStateImplCopyWithImpl(_$ItemSelectedStateImpl _value,
      $Res Function(_$ItemSelectedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$ItemSelectedStateImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$ItemSelectedStateImpl implements ItemSelectedState {
  const _$ItemSelectedStateImpl(this.result);

  @override
  final Result result;

  @override
  String toString() {
    return 'ListState.itemSelected(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemSelectedStateImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemSelectedStateImplCopyWith<_$ItemSelectedStateImpl> get copyWith =>
      __$$ItemSelectedStateImplCopyWithImpl<_$ItemSelectedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) {
    return itemSelected(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) {
    return itemSelected?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) {
    return itemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) {
    return itemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(this);
    }
    return orElse();
  }
}

abstract class ItemSelectedState implements ListState {
  const factory ItemSelectedState(final Result result) =
      _$ItemSelectedStateImpl;

  Result get result;
  @JsonKey(ignore: true)
  _$$ItemSelectedStateImplCopyWith<_$ItemSelectedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListLoadedImplCopyWith<$Res> {
  factory _$$ListLoadedImplCopyWith(
          _$ListLoadedImpl value, $Res Function(_$ListLoadedImpl) then) =
      __$$ListLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListLoadedImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListLoadedImpl>
    implements _$$ListLoadedImplCopyWith<$Res> {
  __$$ListLoadedImplCopyWithImpl(
      _$ListLoadedImpl _value, $Res Function(_$ListLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListLoadedImpl implements ListLoaded {
  const _$ListLoadedImpl();

  @override
  String toString() {
    return 'ListState.listLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) {
    return listLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) {
    return listLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) {
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) {
    return listLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class ListLoaded implements ListState {
  const factory ListLoaded() = _$ListLoadedImpl;
}

/// @nodoc
abstract class _$$ListSuccessImplCopyWith<$Res> {
  factory _$$ListSuccessImplCopyWith(
          _$ListSuccessImpl value, $Res Function(_$ListSuccessImpl) then) =
      __$$ListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ListResponseModel listResponseModel});
}

/// @nodoc
class __$$ListSuccessImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListSuccessImpl>
    implements _$$ListSuccessImplCopyWith<$Res> {
  __$$ListSuccessImplCopyWithImpl(
      _$ListSuccessImpl _value, $Res Function(_$ListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listResponseModel = null,
  }) {
    return _then(_$ListSuccessImpl(
      null == listResponseModel
          ? _value.listResponseModel
          : listResponseModel // ignore: cast_nullable_to_non_nullable
              as ListResponseModel,
    ));
  }
}

/// @nodoc

class _$ListSuccessImpl implements ListSuccess {
  const _$ListSuccessImpl(this.listResponseModel);

  @override
  final ListResponseModel listResponseModel;

  @override
  String toString() {
    return 'ListState.listSuccess(listResponseModel: $listResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSuccessImpl &&
            (identical(other.listResponseModel, listResponseModel) ||
                other.listResponseModel == listResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, listResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSuccessImplCopyWith<_$ListSuccessImpl> get copyWith =>
      __$$ListSuccessImplCopyWithImpl<_$ListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) {
    return listSuccess(listResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) {
    return listSuccess?.call(listResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
    required TResult orElse(),
  }) {
    if (listSuccess != null) {
      return listSuccess(listResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) {
    return listSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) {
    return listSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) {
    if (listSuccess != null) {
      return listSuccess(this);
    }
    return orElse();
  }
}

abstract class ListSuccess implements ListState {
  const factory ListSuccess(final ListResponseModel listResponseModel) =
      _$ListSuccessImpl;

  ListResponseModel get listResponseModel;
  @JsonKey(ignore: true)
  _$$ListSuccessImplCopyWith<_$ListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListErrorImplCopyWith<$Res> {
  factory _$$ListErrorImplCopyWith(
          _$ListErrorImpl value, $Res Function(_$ListErrorImpl) then) =
      __$$ListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$ListErrorImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListErrorImpl>
    implements _$$ListErrorImplCopyWith<$Res> {
  __$$ListErrorImplCopyWithImpl(
      _$ListErrorImpl _value, $Res Function(_$ListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$ListErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$ListErrorImpl implements ListError {
  const _$ListErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'ListState.listError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      __$$ListErrorImplCopyWithImpl<_$ListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Result result) itemSelected,
    required TResult Function() listLoaded,
    required TResult Function(ListResponseModel listResponseModel) listSuccess,
    required TResult Function(ErrorHandler errorHandler) listError,
  }) {
    return listError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Result result)? itemSelected,
    TResult? Function()? listLoaded,
    TResult? Function(ListResponseModel listResponseModel)? listSuccess,
    TResult? Function(ErrorHandler errorHandler)? listError,
  }) {
    return listError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Result result)? itemSelected,
    TResult Function()? listLoaded,
    TResult Function(ListResponseModel listResponseModel)? listSuccess,
    TResult Function(ErrorHandler errorHandler)? listError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ItemSelectedState value) itemSelected,
    required TResult Function(ListLoaded value) listLoaded,
    required TResult Function(ListSuccess value) listSuccess,
    required TResult Function(ListError value) listError,
  }) {
    return listError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ItemSelectedState value)? itemSelected,
    TResult? Function(ListLoaded value)? listLoaded,
    TResult? Function(ListSuccess value)? listSuccess,
    TResult? Function(ListError value)? listError,
  }) {
    return listError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ItemSelectedState value)? itemSelected,
    TResult Function(ListLoaded value)? listLoaded,
    TResult Function(ListSuccess value)? listSuccess,
    TResult Function(ListError value)? listError,
    required TResult orElse(),
  }) {
    if (listError != null) {
      return listError(this);
    }
    return orElse();
  }
}

abstract class ListError implements ListState {
  const factory ListError(final ErrorHandler errorHandler) = _$ListErrorImpl;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$ListErrorImplCopyWith<_$ListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
