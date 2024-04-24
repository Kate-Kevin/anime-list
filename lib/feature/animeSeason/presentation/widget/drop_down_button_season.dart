import 'package:flutter/material.dart';

class DropDownSeason extends StatefulWidget {
  final List<String> item;
  final Function onSeasonChange;
  final String current;
  final bool isSeason;

  const DropDownSeason(
      {super.key,
      required this.onSeasonChange,
      required this.item,
      required this.current,
      required this.isSeason});

  @override
  State<DropDownSeason> createState() => _DropDownSeasonState();
}

class _DropDownSeasonState extends State<DropDownSeason> {
  late String selected;
  late int index;

  @override
  void initState() {
    super.initState();
    index = widget.item.indexWhere((element) => element == widget.current);
    selected = widget.isSeason ? '-Season-' : '-Year-';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: DropdownButton<String>(
              underline: Container(
                decoration: const BoxDecoration(
                  border: null,
                ),
              ),
              borderRadius: BorderRadius.circular(10),
              hint: Text(selected),
              
              items: widget.item
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toSet()
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected = value!;
                  if (int.tryParse(value)==null) {
                    widget.onSeasonChange(value);
                  } else {
                    int intYear = int.parse(value);
                    widget.onSeasonChange(intYear);
                  }
                  
                });
              }),
        ),
      ),
    );
  }
}
