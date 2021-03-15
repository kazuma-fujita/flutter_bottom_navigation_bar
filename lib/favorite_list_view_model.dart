import 'package:flutter_bottom_navigation_bar/word.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteListViewModel extends StateNotifier<Words> {
  FavoriteListViewModel() : super(const Words(words: []));

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
