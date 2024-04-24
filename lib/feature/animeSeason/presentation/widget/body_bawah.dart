import 'package:anime_list/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/season_anime_bloc.dart';

class BodyBawah extends StatefulWidget {
  final String selectedSeason;
  final String selectedYear;

  const BodyBawah(
      {super.key, required this.selectedSeason, required this.selectedYear});

  @override
  State<BodyBawah> createState() => _BodyBawahState();
}

class _BodyBawahState extends State<BodyBawah> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeasonAnimeBloc, SeasonAnimeState>(
      builder: (context, state) {
        if (state is SeasonAnimeLoading) {
          return const Loading();
        }
        if (state is SeasonAnimeLoaded) {
          return Expanded(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              child: CustomScrollView(
                slivers: [
                  SliverGrid.builder(
                      itemCount: state.anime.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        final anime = state.anime[index];

                        return Padding(
                          padding: const EdgeInsets.all(15),
                          child: InkWell(
                            onTap: () {},
                            child: Card(
                              child: Stack(
                                children: [
                                  Center(
                                    child: Image.network(
                                      anime.node.mainPicture.medium,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color.fromARGB(150, 0, 0, 0),
                                      child: Text(
                                        anime.node.title,
                                        textAlign: TextAlign.center,
                                        softWrap: true,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          );
        }
        if (state is SeasonAnimeError) {
          return Text(state.error);
        } else {
          return const Text('failed');
        }
      },
    );
  }
}
