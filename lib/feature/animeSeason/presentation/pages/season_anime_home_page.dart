import 'package:anime_list/feature/animeSeason/presentation/widget/Body.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('anime'),
      ),
      body: const BodyWidget(),
    );
  }
}
