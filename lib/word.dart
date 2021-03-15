import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
abstract class Word with _$Word {
  const factory Word({
    required final int id,
    required final String wordPair,
    required final bool isFavorite,
  }) = _Word;
}

@freezed
abstract class Words with _$Words {
  const factory Words({
    required final List<Word> words,
  }) = _Words;
}
