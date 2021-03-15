import 'package:flutter_bottom_navigation_bar/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteListViewModel extends StateNotifier<Words> {
  FavoriteListViewModel() : super(const Words(words: []));

  void updateFavorite({required int id, required bool hasFavorite}) {
    final newList = state.words
        .map((word) =>
            word.id == id ? word.copyWith(isFavorite: !hasFavorite) : word)
        .toList();
    state = state.copyWith(words: newList);
  }

  void insertOrDeleteFavorite(
      {required int id, required String wordPair, required bool hasFavorite}) {
    if (!hasFavorite) {
      final newList = [
        ...state.words,
        Word(id: id, wordPair: wordPair, isFavorite: true)
      ];
      state = state.copyWith(words: newList);
    } else {
      final newList = state.words.where((word) => word.id != id).toList();
      state = state.copyWith(words: newList);
    }
  }
}
