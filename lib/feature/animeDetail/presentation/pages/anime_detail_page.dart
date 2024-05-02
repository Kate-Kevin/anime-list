import 'package:anime_list/feature/animeDetail/presentation/bloc/detail_anime_bloc.dart';
import 'package:anime_list/feature/animeDetail/presentation/widget/isi_detail.dart';
import 'package:anime_list/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeDetail extends StatefulWidget {
  final String image;

  const AnimeDetail({super.key, required this.image});

  @override
  State<AnimeDetail> createState() => _AnimeDetailState();
}

class _AnimeDetailState extends State<AnimeDetail> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailAnimeBloc, DetailAnimeState>(
      builder: (context, state) {
        if (state is DetailAnimeLoading) {
          return const Scaffold(
            body: Center(
              child: Loading(),
            ),
          );
        }
        if (state is DetailAnimeLoaded) {
          return SafeArea(
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(flex: 3, child: Image.network(widget.image)),
                    const Divider(
                      thickness: 5,
                      height: 25,
                    ),
                    Expanded(flex: 7,child: IsiDetail(animeDetail: state.anime)),
                  ],
                ),
              ),
            ),
          );
        }
        if (state is DetailAnimeError) {
          return Scaffold(
              body: Center(
            child: Text(state.error),
          ));
        } else {
          return const Center(
            child: Text('State Error'),
          );
        }
      },
    );
  }
}
