import 'package:anime_list/feature/animeSeason/presentation/bloc/season_anime_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'feature/animeSeason/presentation/pages/season_anime_home_page.dart';

void main() async{

  await dotenv.load(fileName: ".env");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SeasonAnimeBloc()..add(StartAnimeSeason()),
        )
      ],
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: Home()
      ),
    );
  }
}
