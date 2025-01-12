import 'package:flutter/material.dart';

const List<String> list = <String>[
  'انتخاب ولایت',
  'کابل',
  'هرات',
  'غزنی',
  'قندهار',
  'زابل',
  'میدان وردک',
  'ننگرهار',
  'خوست',
  'پکتیکا',
  'هلمند',
  'فراه',
  'دایکندی',
];

class DropdownNewAdsCity extends StatefulWidget {
  const DropdownNewAdsCity({super.key});

  @override
  State<DropdownNewAdsCity> createState() => _DropdownNewAdsCityState();
}

class _DropdownNewAdsCityState extends State<DropdownNewAdsCity> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Container(
        margin: const EdgeInsets.only(left: 40),
        child: const Icon(
          Icons.location_pin,
          color: Color.fromARGB(255, 2, 2, 2),
        ),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Color.fromARGB(255, 6, 6, 6),
          fontSize: 19,
          fontWeight: FontWeight.w700),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
