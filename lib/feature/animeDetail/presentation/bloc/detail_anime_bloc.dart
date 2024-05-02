import 'package:anime_list/feature/animeDetail/domain/entities/anime_detail_entity.dart';
import 'package:anime_list/feature/animeDetail/domain/useCase/use_detail_anime.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'detail_anime_event.dart';
part 'detail_anime_state.dart';

class DetailAnimeBloc extends Bloc<DetailAnimeEvent, DetailAnimeState> {
  DetailAnimeBloc() : super(DetailAnimeLoading()) {
    on<LoadAnimeDetail>(_onLoadAnimeDetail);
  }


  void _onLoadAnimeDetail(
      LoadAnimeDetail event, Emitter<DetailAnimeState> emit) async {
    emit(DetailAnimeLoading());
    final id = event.id;
    final detail = await UseDetailAnime().call(id: id);
    detail.fold((l) {
      emit(DetailAnimeError(error: l.message.toString()));
    }, (r) {
      emit(DetailAnimeLoaded(anime: r));
    });
  }
}
