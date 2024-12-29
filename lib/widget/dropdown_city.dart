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

class DropdownCity extends StatefulWidget {
  const DropdownCity({super.key});

  @override
  State<DropdownCity> createState() => _DropdownCityState();
}

class _DropdownCityState extends State<DropdownCity> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.location_pin,
        color: Color.fromARGB(255, 2, 2, 2),
      ),
      elevation: 16,
      style: const TextStyle(
          color: Color.fromARGB(255, 6, 6, 6),
          fontSize: 16,
          fontWeight: FontWeight.w700),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 9, 9, 9),
      ),
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
