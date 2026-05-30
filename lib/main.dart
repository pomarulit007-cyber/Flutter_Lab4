import 'package:flutter/material.dart';
import 'package:anime_catalog/anime_list.dart';
import 'package:anime_catalog/models/anime_data.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Каталог игр 🎮',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Center(
                child: Row(
                  children: [
                    const Icon(Icons.sports_esports, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      '${gamesList.length}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: const GameList(),
      ),
    ),
  );
}