import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownMenu].

const List<String> list = <String>[
  'نوع دسته بندی ',
  'مسکونی کرایه',
  'مسکونی فروش',
  'تجاری کرایه',
  'تجاری فروش',
  'موتر',
  'لوازم الکترونیک',
  'لوازم خانه',
  'متفرقه',
];

class DropDownCatAds extends StatefulWidget {
  const DropDownCatAds({super.key});

  @override
  State<DropDownCatAds> createState() => _DropDownCatAdsState();
}

class _DropDownCatAdsState extends State<DropDownCatAds> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 248, 248),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نوع دسته بندی اعلان را اتخاب کنید ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'vazir',
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontFamily: 'vazir',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
              underline: Container(
                height: 2,
                color: const Color.fromARGB(255, 0, 0, 0),
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
                  child: Container(
                      margin: const EdgeInsets.only(right: 50),
                      child: Text(value)),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
