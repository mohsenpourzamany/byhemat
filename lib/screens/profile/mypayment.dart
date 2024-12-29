import 'package:flutter/material.dart';

class MyPay extends StatefulWidget {
  const MyPay({super.key});

  @override
  State<MyPay> createState() => _MyPayState();
}

class _MyPayState extends State<MyPay> {
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
                      'پرداختی های من',
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
                      Icons.payment_outlined,
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
