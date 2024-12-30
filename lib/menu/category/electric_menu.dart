import 'package:flutter/material.dart';

class ElectricMenu extends StatefulWidget {
  const ElectricMenu({super.key});

  @override
  State<ElectricMenu> createState() => _ElectricMenuState();
}

class _ElectricMenuState extends State<ElectricMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xff111111)))),
        margin: const EdgeInsets.only(right: 50, left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: const Text(
                'وسایل الکتریک',
                style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8, right: 5),
              child: const Icon(
                Icons.electrical_services_outlined,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
