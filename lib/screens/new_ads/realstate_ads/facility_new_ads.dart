import 'package:flutter/material.dart';

class FacilityNewAds extends StatefulWidget {
  const FacilityNewAds({super.key});

  @override
  State<FacilityNewAds> createState() => _FacilityNewAdsState();
}

class _FacilityNewAdsState extends State<FacilityNewAds> {
  bool? isCheckedelevator = true;
  bool? isCheckedgarage = true;
  bool? isCheckedparking = true;
  bool? isCheckedBalcony = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'امکانات',
          style: TextStyle(
            fontFamily: 'vazir',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xffe5050e),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Text(
                  textDirection: TextDirection.rtl,
                  ' آسانسور',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Checkbox(
                  tristate: true,
                  value: isCheckedelevator,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedelevator = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  textDirection: TextDirection.rtl,
                  ' انبار',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Checkbox(
                  tristate: true,
                  value: isCheckedgarage,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedgarage = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  textDirection: TextDirection.rtl,
                  ' پارکینگ',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Checkbox(
                  tristate: true,
                  value: isCheckedparking,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedparking = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  textDirection: TextDirection.rtl,
                  ' بالکن',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Checkbox(
                  tristate: true,
                  value: isCheckedBalcony,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheckedBalcony = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
