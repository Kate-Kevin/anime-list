import 'package:anime_list/feature/animeSeason/presentation/widget/Body.dart';
import 'package:anime_list/shared/season_and_year.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('anime'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        debugPrint(listYear().toString());
      }),
      body: const BodyWidget(),
    );
  }
}
