// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WordTearOff {
  const _$WordTearOff();

  _Word call(
      {required int id, required String wordPair, required bool isFavorite}) {
    return _Word(
      id: id,
      wordPair: wordPair,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
const $Word = _$WordTearOff();

/// @nodoc
mixin _$Word {
  int get id => throw _privateConstructorUsedError;
  String get wordPair => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res>;
  $Res call({int id, String wordPair, bool isFavorite});
}

/// @nodoc
class _$WordCopyWithImpl<$Res> implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  final Word _value;
  // ignore: unused_field
  final $Res Function(Word) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? wordPair = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wordPair: wordPair == freezed
          ? _value.wordPair
          : wordPair // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WordCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$WordCopyWith(_Word value, $Res Function(_Word) then) =
      __$WordCopyWithImpl<$Res>;
  @override
  $Res call({int id, String wordPair, bool isFavorite});
}

/// @nodoc
class __$WordCopyWithImpl<$Res> extends _$WordCopyWithImpl<$Res>
    implements _$WordCopyWith<$Res> {
  __$WordCopyWithImpl(_Word _value, $Res Function(_Word) _then)
      : super(_value, (v) => _then(v as _Word));

  @override
  _Word get _value => super._value as _Word;

  @override
  $Res call({
    Object? id = freezed,
    Object? wordPair = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_Word(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wordPair: wordPair == freezed
          ? _value.wordPair
          : wordPair // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_Word with DiagnosticableTreeMixin implements _Word {
  const _$_Word(
      {required this.id, required this.wordPair, required this.isFavorite});

  @override
  final int id;
  @override
  final String wordPair;
  @override
  final bool isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Word(id: $id, wordPair: $wordPair, isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Word'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('wordPair', wordPair))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Word &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.wordPair, wordPair) ||
                const DeepCollectionEquality()
                    .equals(other.wordPair, wordPair)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(wordPair) ^
      const DeepCollectionEquality().hash(isFavorite);

  @JsonKey(ignore: true)
  @override
  _$WordCopyWith<_Word> get copyWith =>
      __$WordCopyWithImpl<_Word>(this, _$identity);
}

abstract class _Word implements Word {
  const factory _Word(
      {required int id,
      required String wordPair,
      required bool isFavorite}) = _$_Word;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get wordPair => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordCopyWith<_Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WordsTearOff {
  const _$WordsTearOff();

  _Words call({required List<Word> words}) {
    return _Words(
      words: words,
    );
  }
}

/// @nodoc
const $Words = _$WordsTearOff();

/// @nodoc
mixin _$Words {
  List<Word> get words => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WordsCopyWith<Words> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsCopyWith<$Res> {
  factory $WordsCopyWith(Words value, $Res Function(Words) then) =
      _$WordsCopyWithImpl<$Res>;
  $Res call({List<Word> words});
}

/// @nodoc
class _$WordsCopyWithImpl<$Res> implements $WordsCopyWith<$Res> {
  _$WordsCopyWithImpl(this._value, this._then);

  final Words _value;
  // ignore: unused_field
  final $Res Function(Words) _then;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc
abstract class _$WordsCopyWith<$Res> implements $WordsCopyWith<$Res> {
  factory _$WordsCopyWith(_Words value, $Res Function(_Words) then) =
      __$WordsCopyWithImpl<$Res>;
  @override
  $Res call({List<Word> words});
}

/// @nodoc
class __$WordsCopyWithImpl<$Res> extends _$WordsCopyWithImpl<$Res>
    implements _$WordsCopyWith<$Res> {
  __$WordsCopyWithImpl(_Words _value, $Res Function(_Words) _then)
      : super(_value, (v) => _then(v as _Words));

  @override
  _Words get _value => super._value as _Words;

  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_Words(
      words: words == freezed
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
    ));
  }
}

/// @nodoc
class _$_Words with DiagnosticableTreeMixin implements _Words {
  const _$_Words({required this.words});

  @override
  final List<Word> words;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Words(words: $words)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Words'))
      ..add(DiagnosticsProperty('words', words));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Words &&
            (identical(other.words, words) ||
                const DeepCollectionEquality().equals(other.words, words)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(words);

  @JsonKey(ignore: true)
  @override
  _$WordsCopyWith<_Words> get copyWith =>
      __$WordsCopyWithImpl<_Words>(this, _$identity);
}

abstract class _Words implements Words {
  const factory _Words({required List<Word> words}) = _$_Words;

  @override
  List<Word> get words => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordsCopyWith<_Words> get copyWith => throw _privateConstructorUsedError;
}
