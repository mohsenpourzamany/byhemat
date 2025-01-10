import 'package:flutter/material.dart';

class CarMenu extends StatefulWidget {
  const CarMenu({super.key});

  @override
  State<CarMenu> createState() => _CarMenuState();
}

class _CarMenuState extends State<CarMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color.fromARGB(255, 183, 183, 183)))),
        margin: const EdgeInsets.only(right: 50, left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'موتر',
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
                Icons.car_crash_outlined,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
