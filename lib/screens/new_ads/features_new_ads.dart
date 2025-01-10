import 'package:flutter/material.dart';

class FeaturesNewAds extends StatefulWidget {
  const FeaturesNewAds({super.key});

  @override
  State<FeaturesNewAds> createState() => _FeaturesNewAdsState();
}

class _FeaturesNewAdsState extends State<FeaturesNewAds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 248, 248),
          borderRadius: BorderRadius.circular(15)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Text('متراژ'),
                    TextField(),
                  ],
                ),
                Row(
                  children: [
                    Text('سال ساخت'),
                    TextField(),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
