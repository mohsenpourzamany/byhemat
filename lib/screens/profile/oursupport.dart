import 'package:flutter/material.dart';

class OurSupport extends StatefulWidget {
  const OurSupport({super.key});

  @override
  State<OurSupport> createState() => _OurSupportState();
}

class _OurSupportState extends State<OurSupport> {
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
                      'پشتیبانی و قوانین',
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
                      Icons.contact_support_outlined,
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
