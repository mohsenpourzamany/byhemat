import 'dart:ui';

import 'package:byhemat/menu/main_menu.dart';
import 'package:byhemat/screens/home_page.dart';
import 'package:byhemat/screens/new_ads.dart';
import 'package:byhemat/screens/profile/profile.dart';
import 'package:byhemat/screens/special_ads.dart';
import 'package:byhemat/widget/dropdown_city.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DropdownCity(),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.messenger_sharp),
            )
          ],
        ),
      ),
      body: IndexedStack(
        index: selectedBottomNavigationIndex,
        children: getScreen(),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: BottomNavigationBar(
            // backgroundColor: Color.fromARGB(43, 237, 43, 43),
            onTap: (int index) {
              setState(() {
                selectedBottomNavigationIndex = index;
              });
            },
            currentIndex: selectedBottomNavigationIndex,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'vazir',
                fontSize: 15,
                color: Color(0xffe5050e),
                fontWeight: FontWeight.w500),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'vazir',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home_filled,
                  size: 40,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xffe5050e),
                        blurRadius: 25,
                        spreadRadius: -23,
                        offset: Offset(0, 10))
                  ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.home_filled,
                      size: 50,
                      color: Color(0xffe5050e),
                    ),
                  ),
                ),
                label: 'خانه',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.star,
                  size: 40,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xffe5050e),
                        blurRadius: 25,
                        spreadRadius: -23,
                        offset: Offset(0, 10))
                  ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.star,
                      size: 50,
                      color: Color(0xffe5050e),
                    ),
                  ),
                ),
                label: ' ویژه ها',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.add_circle,
                  size: 50,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xffe5050e),
                        blurRadius: 25,
                        spreadRadius: -25,
                        offset: Offset(0, 10))
                  ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add_circle,
                      size: 50,
                      color: Color(0xffe5050e),
                    ),
                  ),
                ),
                label: ' اعلان جدید',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 40,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xffe5050e),
                        blurRadius: 25,
                        spreadRadius: -20,
                        offset: Offset(0, 10))
                  ]),
                  child: const Icon(
                    Icons.menu_rounded,
                    size: 50,
                    color: Color(0xffe5050e),
                  ),
                ),
                label: 'دسته بندی',
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color(0xffe5050e),
                        blurRadius: 25,
                        spreadRadius: -22,
                        offset: Offset(0, 10))
                  ]),
                  child: const Icon(
                    Icons.person,
                    size: 50,
                    color: Color(0xffe5050e),
                  ),
                ),
                label: 'حساب من ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getScreen() {
  return <Widget>[
    const HomePage(),
    const SpecialAds(),
    const NewAds(),
    const MainMenu(),
    const Profile(),
  ];
}
