import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropDownCatElec extends StatefulWidget {
  const DropDownCatElec({super.key});

  @override
  State<DropDownCatElec> createState() => _DropDownCatElecState();
}

class _DropDownCatElecState extends State<DropDownCatElec> {
  final List<String> items = [
    ' موبایل و تبلت',
    ' کامپیوتر',
    ' کنسول بازی ',
    '  صوتی و تصویری ',
    '  تلفن ',
    '  متفرقه ',
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
              ' انتخاب کنید ',
              style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 18,
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
                          fontSize: 17,
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
              width: 200,
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
