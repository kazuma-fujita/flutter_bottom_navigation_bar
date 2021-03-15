import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation_bar/main.dart';
import 'package:flutter_bottom_navigation_bar/word.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WordPairListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Pair List'),
      ),
      body: _BuildList(),
    );
  }
}

class _BuildList extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final words = useProvider(wordPairListViewModelProvider.state).words;
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      itemBuilder: (BuildContext _context, int index) {
        if (index >= words.length) {
          // build中にstateを操作をするとErrorになる為Futureで非同期化
          Future<void>(
            () => context.read(wordPairListViewModelProvider).fetchList(),
          );
        }
        return _buildRow(context, words[index]);
      },
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
                  context.read(wordPairListViewModelProvider).updateFavorite(
                      id: word.id, hasFavorite: word.isFavorite);
                  context
                      .read(favoriteListViewModelProvider)
                      .insertOrDeleteFavorite(
                          id: word.id,
                          wordPair: word.wordPair,
                          hasFavorite: word.isFavorite);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
