import 'package:flutter/material.dart';

class EmailWidget extends StatefulWidget {
  const EmailWidget({super.key});

  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            textDirection: TextDirection.rtl,
            'ایمیل :',
            style: TextStyle(
                fontFamily: 'vazir', fontSize: 17, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 234, 234),
                borderRadius: BorderRadius.circular(5)),
            height: 38,
            width: 400,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'mohsenp@gmail.com ',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 117, 117, 117)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
