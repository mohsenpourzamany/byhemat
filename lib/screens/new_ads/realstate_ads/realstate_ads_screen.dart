import 'package:flutter/material.dart';

class RealstateAdsScreen extends StatefulWidget {
  const RealstateAdsScreen({super.key});

  @override
  State<RealstateAdsScreen> createState() => _RealstateAdsScreenState();
}

class _RealstateAdsScreenState extends State<RealstateAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ثبت اعلان ملک'),
      ),
      body: const SafeArea(child: Text('dddd')),
    );
  }
}
