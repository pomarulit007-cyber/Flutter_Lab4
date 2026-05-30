import 'package:flutter/material.dart';
import 'package:anime_catalog/anime_card.dart';
import 'package:anime_catalog/models/anime_data.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: AnimeCard(anime: animeList[index]),
        );
      },
    );
  }
}