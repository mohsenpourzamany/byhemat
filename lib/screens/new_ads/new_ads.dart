import 'package:byhemat/screens/new_ads/newads_menu/moter_menu_ads.dart';
import 'package:byhemat/screens/new_ads/newads_menu/electric_menu_ads.dart';
import 'package:byhemat/screens/new_ads/newads_menu/empeloy_menu_ads.dart';
import 'package:byhemat/screens/new_ads/newads_menu/misc_menu_ads.dart';
import 'package:byhemat/screens/new_ads/newads_menu/realatate_menu_ads.dart';
import 'package:byhemat/screens/new_ads/newads_menu/work_menu_ads.dart';
import 'package:flutter/material.dart';

class NewAds extends StatefulWidget {
  const NewAds({super.key});

  @override
  State<NewAds> createState() => _NewAdsState();
}

class _NewAdsState extends State<NewAds> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image(
            width: 80,
            image: AssetImage('assets/images/512.png'),
          ),
          SizedBox(
            height: 30,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'برای ثبت اعلان جدید نوع ',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                  ),
                ),
                Text(
                  'دسته بندی ',
                  style: TextStyle(
                      color: Color(0xffe5050e),
                      fontFamily: 'vazir',
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Text(
            ' را انتخاب کنید ',
            style: TextStyle(
              fontFamily: 'vazir',
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RealstateMenuAds(),
          MoterMenuAds(),
          ElectricMenuAds(),
          EmpeloyMenuAds(),
          WorkMenuAds(),
          MiscMenuAds(),
        ],
      ),
    );
  }
}
