import 'package:flutter/material.dart';

class Synopsis extends StatelessWidget {
  final String synopsis;
  const Synopsis({super.key, required this.synopsis});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Text(synopsis));
  }
}