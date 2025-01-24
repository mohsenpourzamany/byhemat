import 'package:flutter/material.dart';

class FamilyWidget extends StatefulWidget {
  const FamilyWidget({super.key});

  @override
  State<FamilyWidget> createState() => _FamilyWidgetState();
}

class _FamilyWidgetState extends State<FamilyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        children: [
          Text(
            'فامیلی :',
            style: TextStyle(
                fontFamily: 'vazir', fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            ' پورزمانی',
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
