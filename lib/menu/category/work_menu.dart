import 'package:flutter/material.dart';

class WorkMenu extends StatefulWidget {
  const WorkMenu({super.key});

  @override
  State<WorkMenu> createState() => _WorkMenuState();
}

class _WorkMenuState extends State<WorkMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xff111111)))),
        margin: const EdgeInsets.only(right: 50, left: 50, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'کسب و کار',
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
                Icons.desktop_mac_outlined,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
