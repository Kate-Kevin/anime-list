part of 'season_anime_bloc.dart';

sealed class SeasonAnimeState extends Equatable {
  const SeasonAnimeState();
  
  @override
  List<Object> get props => [];
}

final class SeasonAnimeLoading extends SeasonAnimeState {

}

final class SeasonAnimeLoaded extends SeasonAnimeState{
  final List<SeasonAnimeEntity> anime;

  const SeasonAnimeLoaded({required this.anime});

  @override
  List<Object> get props => [anime];
}

final class SeasonAnimeError extends SeasonAnimeState{
  final String error;

  const SeasonAnimeError({required this.error});

  @override
  List<Object> get props => [error];

}