import 'package:byhemat/screens/profile/myads/myads_widget.dart';
import 'package:flutter/material.dart';

class MyAdsList extends StatefulWidget {
  const MyAdsList({super.key});

  @override
  State<MyAdsList> createState() => _MyAdsListState();
}

class _MyAdsListState extends State<MyAdsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('آگهی های من'),
      ),
      body: const SafeArea(
          child: Column(
        children: [MyAdsWidget()],
      )),
    );
  }
}
