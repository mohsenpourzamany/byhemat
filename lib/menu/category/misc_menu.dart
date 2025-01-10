import 'package:flutter/material.dart';

class MiscMenu extends StatefulWidget {
  const MiscMenu({super.key});

  @override
  State<MiscMenu> createState() => _MiscMenuState();
}

class _MiscMenuState extends State<MiscMenu> {
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
                'متفرقه',
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
                Icons.more_horiz_sharp,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
