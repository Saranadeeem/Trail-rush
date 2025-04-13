class SnowLakeTrekModel {
  final String name;
  final String months;
  final String difficulty;
  final String elevation;
  final String duration;
  final String overview;
  final String description;
  final String history;
  final List<String> imageUrls;

  SnowLakeTrekModel({
    required this.name,
    required this.months,
    required this.difficulty,
    required this.elevation,
    required this.duration,
    required this.overview,
    required this.description,
    required this.history,
    required this.imageUrls,
  });
}
