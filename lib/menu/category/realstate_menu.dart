import 'package:flutter/material.dart';

class RealstateMenu extends StatefulWidget {
  const RealstateMenu({super.key});

  @override
  State<RealstateMenu> createState() => _RealstateMenuState();
}

class _RealstateMenuState extends State<RealstateMenu> {
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
            const Text(
              'املاک',
              style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 21,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 8, right: 5),
              child: const Icon(
                Icons.real_estate_agent_outlined,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
