import 'package:flutter/material.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({super.key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(250, 255, 244, 244),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
            onPressed: () {},
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Row(
                  children: [
                    Text(
                      'تنظیمات',
                      style: TextStyle(
                          fontFamily: 'vazir',
                          color: Color.fromARGB(255, 107, 107, 107),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.settings,
                      color: Color(0xffe5050e),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
