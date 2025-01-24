import 'package:flutter/material.dart';

class TellWidget extends StatefulWidget {
  const TellWidget({super.key});

  @override
  State<TellWidget> createState() => _TellWidgetState();
}

class _TellWidgetState extends State<TellWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children: [
          Text(
            'موبایل :',
            style: TextStyle(
                fontFamily: 'vazir', fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '073245876 ',
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
