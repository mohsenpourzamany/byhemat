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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              const Text(
                'ویژگی ها',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffe5050e)),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'متراژ : ',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 17),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height: 35,
                            width: 140,
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'طبقه : ',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 17),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height: 35,
                            width: 140,
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'تعداد اتاق : ',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 17),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height: 35,
                            width: 140,
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'سال ساخت : ',
                            style: TextStyle(fontFamily: 'vazir', fontSize: 17),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            height: 35,
                            width: 140,
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
