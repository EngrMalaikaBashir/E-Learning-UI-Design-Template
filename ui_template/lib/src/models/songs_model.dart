class SongsModel {
  final String title;
  final String author;
  final String duration;
  bool isLiked;

  SongsModel({
    required this.title,
    required this.author,
    required this.duration,
    this.isLiked = false,
  });
}