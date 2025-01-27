import 'package:flutter/material.dart';

class Versionwidget extends StatelessWidget {
  const Versionwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'version :',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '1.1.2',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
