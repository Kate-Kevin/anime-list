import 'package:anime_list/feature/animeSeason/domain/entities/season_anime_entity.dart';
import 'package:anime_list/feature/animeSeason/domain/useCase/use_season_anime.dart';
import 'package:anime_list/shared/season_and_year.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';


part 'season_anime_event.dart';
part 'season_anime_state.dart';

class SeasonAnimeBloc extends Bloc<SeasonAnimeEvent, SeasonAnimeState> {
  SeasonAnimeBloc() : super(SeasonAnimeLoading()) {
    on<StartAnimeSeason>(_onStartAnimeSeason);
    on<LoadAnimeSeason>(_onLoadAnimeSeason);
  }

  void _onStartAnimeSeason(StartAnimeSeason event, Emitter<SeasonAnimeState> emit)async{
    emit(SeasonAnimeLoading());
    try {
      final season = getCurrentSeason();
      final year = getCurrentYear();
      final List<SeasonAnimeEntity> anime = await UseSeasonAnime().call(season: season, year: year);

      anime.sort((a,b)=>a.node.title.compareTo(b.node.title));
      
      emit(SeasonAnimeLoaded(anime: anime));
    } catch (err) {
      emit(SeasonAnimeError(error: err.toString()));
    }
  }

  void _onLoadAnimeSeason(LoadAnimeSeason event, Emitter<SeasonAnimeState> emit)async{
    emit(SeasonAnimeLoading());
    try {
      final season = event.season;
      final year = event.year;
      final List<SeasonAnimeEntity> anime = await UseSeasonAnime().call(season: season, year: year);

      anime.sort((a,b)=>a.node.title.compareTo(b.node.title));

      emit(SeasonAnimeLoaded(anime: anime));
    } catch (err) {
      emit(SeasonAnimeError(error: err.toString()));
    }
  }
}
