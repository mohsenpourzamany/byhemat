import 'package:flutter/material.dart';

class RecentVisit extends StatefulWidget {
  const RecentVisit({super.key});

  @override
  State<RecentVisit> createState() => _RecentVisitState();
}

class _RecentVisitState extends State<RecentVisit> {
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
                      ' بازدیدهای اخیر ',
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
                      Icons.visibility_outlined,
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
