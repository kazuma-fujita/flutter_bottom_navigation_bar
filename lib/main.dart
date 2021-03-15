import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/word_pair_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bottom_navigation_bar_view.dart';
import 'favorite_list_view_model.dart';

final tabTypeProvider =
    AutoDisposeStateProvider<TabType>((ref) => TabType.wordPair);

enum TabType {
  wordPair,
  favorite,
}

final wordPairListViewModelProvider = StateNotifierProvider(
  (ref) => WordPairListViewModel(),
);

final favoriteListViewModelProvider = StateNotifierProvider(
  (ref) => FavoriteListViewModel(),
);

void main() {
  runApp(
    ProviderScope(
      child: BottomNavigationBarView(),
    ),
  );
}
