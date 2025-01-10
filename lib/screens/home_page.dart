import 'package:byhemat/widget/app_search_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          AppSearchBox(),
        ],
      ),
    );
  }
}
