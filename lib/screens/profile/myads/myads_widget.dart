import 'package:byhemat/screens/profile/myads/buttons_ads_widget.dart';
import 'package:byhemat/screens/profile/myads/photo_ads_widget.dart';
import 'package:flutter/material.dart';

class MyAdsWidget extends StatefulWidget {
  const MyAdsWidget({super.key});

  @override
  State<MyAdsWidget> createState() => _MyAdsWidgetState();
}

class _MyAdsWidgetState extends State<MyAdsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 227, 227, 227),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              PhotoAdsWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('کد آگهی :'),
                            SizedBox(
                              width: 8,
                            ),
                            Text('2314'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text('ویلای ۱۵۰ متری کابل '),
                      ],
                    ),
                    Row(
                      children: [
                        Text('فروش مسکونی'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('۱۴۰۳/۱۱/۰۵'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('تعداد بازدید :'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('۱'),
                          ],
                        ),
                        Text('منتشر شده'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ButtonAdsWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
