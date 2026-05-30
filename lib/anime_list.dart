import 'package:flutter/material.dart';
import 'package:anime_catalog/anime_card.dart';
import 'package:anime_catalog/models/anime_data.dart';

class GameList extends StatelessWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: gamesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: GameCard(game: gamesList[index]),
        );
      },
    );
  }
}