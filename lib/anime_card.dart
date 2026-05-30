import 'package:flutter/material.dart';
import 'package:anime_catalog/models/anime.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.game});
  final Game game;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => _showDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPoster(),
            _buildInfo(),
          ],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(game.description),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Widget _buildPoster() {
    return Image.asset(
      game.imagePath,
      height: 550,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 4),
          _buildGenre(),
          const SizedBox(height: 4),
          _buildDeveloper(),
          const SizedBox(height: 8),
          _buildRating(),
          const SizedBox(height: 8),
          _buildDescription(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            game.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '${game.year}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildGenre() {
    return Text(
      game.genre,
      style: const TextStyle(
        color: Colors.deepPurple,
        fontSize: 13,
      ),
    );
  }

  Widget _buildDeveloper() {
    return Row(
      children: [
        const Icon(
          Icons.business,
          size: 14,
          color: Colors.orange,
        ),
        const SizedBox(width: 4),
        Text(
          game.developer,
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(width: 4),
        Text(
          game.rating.toStringAsFixed(1),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const Text(
          ' / 10',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      game.description,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.black87,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}