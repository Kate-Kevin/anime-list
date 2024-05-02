import 'package:flutter/material.dart';

class DetailTanggal extends StatelessWidget {
  final String startDate;
  final String endDate;
  const DetailTanggal(
      {super.key, required this.startDate, required this.endDate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Tgl Mulai')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(flex: 9, child: Text(startDate))
          ],
        ),
        Row(
          children: [
            const Expanded(flex: 5, child: Text('Tgl Selesai')),
            const Expanded(flex: 1, child: Text(':')),
            Expanded(flex: 9, child: Text(endDate))
          ],
        )
      ],
    );
  }
}
