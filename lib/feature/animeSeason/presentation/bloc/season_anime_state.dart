part of 'season_anime_bloc.dart';

sealed class SeasonAnimeState extends Equatable {
  const SeasonAnimeState();
  
  @override
  List<Object> get props => [];
}

final class SeasonAnimeLoading extends SeasonAnimeState {

}

final class SeasonAnimeLoaded extends SeasonAnimeState{
  final AnimeNodeEntity anime;

  const SeasonAnimeLoaded({required this.anime});
}