class Game {
  const Game({
    required this.title,
    required this.description,
    required this.genre,
    required this.year,
    required this.rating,
    required this.developer,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String genre;
  final int year;
  final double rating;
  final String developer;
  final String imagePath;
}