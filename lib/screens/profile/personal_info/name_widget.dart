import 'package:flutter/material.dart';

class NameWidget extends StatefulWidget {
  const NameWidget({super.key});

  @override
  State<NameWidget> createState() => _NameWidgetState();
}

class _NameWidgetState extends State<NameWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children: [
          Text(
            'نام :',
            style: TextStyle(
                fontFamily: 'vazir', fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'محسن ',
            style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 117, 117, 117)),
          )
        ],
      ),
    );
  }
}
