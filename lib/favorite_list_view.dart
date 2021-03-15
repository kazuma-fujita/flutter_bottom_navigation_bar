import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/main.dart';
import 'package:flutter_bottom_navigation_bar/word.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoriteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite List'),
      ),
      body: _BuildList(),
    );
  }
}

class _BuildList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final favorites = useProvider(favoriteListViewModelProvider.state).words;
    return favorites.isNotEmpty
        ? ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (BuildContext _context, int index) =>
                _buildRow(context, favorites[index]))
        : _emptyView();
  }

  Widget _emptyView() {
    return const Center(
      child: Text('お気に入りの単語はありません'),
    );
  }

  Widget _buildRow(BuildContext context, Word word) {
    return SizedBox(
      height: 80,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                word.wordPair,
                style: const TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: Icon(
                    word.isFavorite ? Icons.favorite : Icons.favorite_border),
                color: word.isFavorite ? Colors.pink : null,
                onPressed: () {
                  context
                      .read(favoriteListViewModelProvider)
                      .insertOrDeleteFavorite(
                          id: word.id,
                          wordPair: word.wordPair,
                          hasFavorite: word.isFavorite);

                  context.read(wordPairListViewModelProvider).updateFavorite(
                      id: word.id, hasFavorite: word.isFavorite);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
