import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownCatAds extends StatefulWidget {
  const DropDownCatAds({super.key});

  @override
  State<DropDownCatAds> createState() => _DropDownCatAdsState();
}

class _DropDownCatAdsState extends State<DropDownCatAds> {
  final List<String> items = [
    'مسکونی کرایه',
    'مسکونی فروشی',
    'تجاری کرایه',
    'تجاری فروشی',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            hint: Text(
              ' نوع ملک',
              style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        textDirection: TextDirection.rtl,
                        item,
                        style: const TextStyle(
                          fontFamily: 'vazir',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: const ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              width: 160,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
