import 'package:flutter/material.dart';

class GoogleMapNewAds extends StatefulWidget {
  const GoogleMapNewAds({super.key});

  @override
  State<GoogleMapNewAds> createState() => _GoogleMapNewAdsState();
}

class _GoogleMapNewAdsState extends State<GoogleMapNewAds> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          'موقعیت',
          style: TextStyle(
            fontFamily: 'vazir',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xffe5050e),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            'بعد از انتخاب محل میتوانید نمایش آن را فعال یا غیر فعال کنید .',
            style: TextStyle(
                fontFamily: 'vazir',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xffc1c1c1)),
          ),
        ),
        const Image(
          height: 200,
          width: 300,
          image: AssetImage('assets/images/mapgoogle.jpg'),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            margin: const EdgeInsets.only(right: 28, top: 5),
            child: Row(
              children: [
                const Text(
                  textDirection: TextDirection.rtl,
                  'موقعیت دقیق ملک نمایش داده شود ؟',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 10,
                  child: Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
