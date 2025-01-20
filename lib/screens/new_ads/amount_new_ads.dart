import 'package:flutter/material.dart';

class AmountNewAds extends StatefulWidget {
  const AmountNewAds({super.key});

  @override
  State<AmountNewAds> createState() => _AmountNewAdsState();
}

class _AmountNewAdsState extends State<AmountNewAds> {
  @override
  Widget build(BuildContext context) {
    return const Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'قیمت',
              style: TextStyle(
                  color: Color(0xffe5050e),
                  fontFamily: 'vazir',
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '  مبلغ : ',
                  style: TextStyle(fontFamily: 'vazir', fontSize: 17),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 35,
                  width: 200,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'افغانی',
                  style: TextStyle(fontFamily: 'vazir', fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
