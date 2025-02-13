import 'package:byhemat/screens/new_ads/realstate_ads/realstate_ads_screen.dart';
import 'package:flutter/material.dart';

class EmpeloyMenuAds extends StatelessWidget {
  const EmpeloyMenuAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromARGB(255, 220, 220, 220)))),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const RealstateAdsScreen();
          }));
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Color(0xffe5050e),
            ),
            Row(
              children: [
                Text(
                  'استخدام وکاریابی',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'vazir',
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.work_outline,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
