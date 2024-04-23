import 'package:anime_list/shared/capitalize_word.dart';
import 'package:flutter/material.dart';

class BodyPembatas extends StatelessWidget {
  final String season;
  final String year;

  const BodyPembatas({super.key,required this.season,required this.year});

  @override
  Widget build(BuildContext context) {
    final String capitalize = capitalizeFirstLetter(season);
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 5,)),
        Text('$capitalize $year'),
        const Expanded(child: Divider(thickness: 5,)),
      ],
    );
  }
}