part of 'season_anime_bloc.dart';

sealed class SeasonAnimeEvent extends Equatable {
  const SeasonAnimeEvent();

  @override
  List<Object> get props => [];
}

class StartAnimeSeason extends SeasonAnimeEvent{

  @override
  List<Object> get props => [];

}

class LoadAnimeSeason extends SeasonAnimeEvent{
  final String season;
  final String year;

  const LoadAnimeSeason({required this.season, required this.year});

  @override
  List<Object> get props => [season,year];
}