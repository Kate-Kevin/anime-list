part of 'detail_anime_bloc.dart';

sealed class DetailAnimeEvent extends Equatable {
  const DetailAnimeEvent();

  @override
  List<Object> get props => [];
}

class LoadAnimeDetail extends DetailAnimeEvent{
  final int id ;

  const LoadAnimeDetail({required this.id});

  @override
  List<Object> get props => [id];
}
