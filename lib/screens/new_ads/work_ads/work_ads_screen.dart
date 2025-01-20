import 'package:byhemat/screens/new_ads/amount_new_ads.dart';
import 'package:byhemat/screens/new_ads/elec_ads/features_elec_ads.dart';
import 'package:byhemat/screens/new_ads/google_map_new_ads.dart';
import 'package:byhemat/screens/new_ads/photo_picker.dart';
import 'package:byhemat/screens/new_ads/work_ads/drop_down_cat_work.dart';
import 'package:flutter/material.dart';

class WorkAdsScreen extends StatefulWidget {
  const WorkAdsScreen({super.key});

  @override
  State<WorkAdsScreen> createState() => _WorkAdsScreenState();
}

class _WorkAdsScreenState extends State<WorkAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ثبت اعلان کسب و کار'),
      ),
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 255, 240, 240),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'دسته بندی',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffe5050e),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 145,
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ولسوالی',
                          ),
                        ),
                      ),
                    ),
                    const DropDownCatWork(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Color(0xffffffff),
                  height: 2,
                ),
                const AmountNewAds(),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: Color(0xffffffff),
                  height: 2,
                ),
                const FeaturesElecAds(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color(0xffffffff),
                  height: 2,
                ),
                const GoogleMapNewAds(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color(0xffffffff),
                  height: 2,
                ),
                const PhotoPicker(),
                const SizedBox(
                  height: 40,
                ),
                const Divider(
                  color: Color(0xffffffff),
                  height: 2,
                ),
                const Text(
                  'عنوان اعلان',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffe5050e),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 40,
                  width: 300,
                  child: const TextField(
                    textDirection: TextDirection.rtl,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const Text(
                  'توضیحات اعلان',
                  style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffe5050e),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 100,
                  width: 300,
                  child: const TextField(
                    maxLines: 8,
                    textDirection: TextDirection.rtl,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return const SignUpIn();
                    // }));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 43),
                    backgroundColor: const Color(0xffe5050e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side:
                          const BorderSide(color: Color(0xffe5050e), width: 3),
                    ),
                  ),
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'ثبت اعلان',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'vazir',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
