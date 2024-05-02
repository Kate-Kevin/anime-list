part of 'detail_anime_bloc.dart';

sealed class DetailAnimeState extends Equatable {
  const DetailAnimeState();
  
  @override
  List<Object> get props => [];
}

final class DetailAnimeLoading extends DetailAnimeState {}

final class DetailAnimeLoaded extends DetailAnimeState{
  final AnimeDetailEntity anime;

  const DetailAnimeLoaded({required this.anime});

  @override
  List<Object> get props => [anime];
}

final class DetailAnimeError extends DetailAnimeState{
  final String error;

  const DetailAnimeError({required this.error});

  @override
  List<Object> get props => [error];
}
