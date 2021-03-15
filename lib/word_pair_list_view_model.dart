import 'package:english_words/english_words.dart';
import 'package:flutter_bottom_navigation_bar/word.dart';
import 'package:state_notifier/state_notifier.dart';

class WordPairListViewModel extends StateNotifier<Words> {
  WordPairListViewModel() : super(const Words(words: [])) {
    fetchList();
  }

  void fetchList() {
    var index = 0;
    final words = generateWordPairs()
        .take(15)
        .map((wordPair) => Word(
            id: state.words.length + index++,
            wordPair: wordPair.asPascalCase,
            isFavorite: false))
        .toList();
    final newList = [...state.words, ...words];
    state = state.copyWith(words: newList);
  }

  void updateFavorite({required int id, required bool hasFavorite}) {
    final newList = state.words
        .map((word) =>
            word.id == id ? word.copyWith(isFavorite: !hasFavorite) : word)
        .toList();
    state = state.copyWith(words: newList);
  }
}
