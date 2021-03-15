import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/favorite_list_view.dart';
import 'package:flutter_bottom_navigation_bar/main.dart';
import 'package:flutter_bottom_navigation_bar/word_pair_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BottomNavigationBarView extends HookWidget {
  final _views = [WordPairListView(), FavoriteListView()];

  @override
  Widget build(BuildContext context) {
    final tabType = useProvider(tabTypeProvider);
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Word pair',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
          onTap: (int selectIndex) {
            tabType.state = TabType.values[selectIndex];
          },
          currentIndex: tabType.state.index,
        ),
        body: _views[tabType.state.index],
        // body: ProviderScope(
        //   child: _views[_selectIndex],
        // ),
      ),
    );
  }
}
