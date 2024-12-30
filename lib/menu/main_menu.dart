import 'package:byhemat/menu/category/car_menu.dart';
import 'package:byhemat/menu/category/electric_menu.dart';
import 'package:byhemat/menu/category/empeloy_menu.dart';
import 'package:byhemat/menu/category/misc_menu.dart';
import 'package:byhemat/menu/category/realstate_menu.dart';
import 'package:byhemat/menu/category/work_menu.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image(
            width: 100,
            image: AssetImage('assets/images/512.png'),
          ),
          SizedBox(
            height: 100,
          ),
          RealstateMenu(),
          SizedBox(
            height: 15,
          ),
          CarMenu(),
          SizedBox(
            height: 15,
          ),
          EmpeloyMenu(),
          SizedBox(
            height: 15,
          ),
          ElectricMenu(),
          WorkMenu(),
          SizedBox(
            height: 15,
          ),
          MiscMenu(),
        ],
      ),
    );
  }
}
