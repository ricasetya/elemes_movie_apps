// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final double voteAverage;
  final String overView;
  final String posterPath;
  final String backdropPath;
  const Movie({
    required this.id,
    required this.title,
    required this.voteAverage,
    required this.overView,
    required this.posterPath,
    required this.backdropPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
      id: json['id'],
      title: json['title'],
      voteAverage: (json['vote_average'] as num).toDouble(),
      overView: json['overView'],
      posterPath: json['poster_path'],
      backdropPath: json['backdrop_path']);

  @override
  List<Object?> get props =>
      [id, title, voteAverage, overView, posterPath, backdropPath];
}
