import 'package:byhemat/screens/profile/aboutus.dart';
import 'package:byhemat/screens/profile/appsettings.dart';
import 'package:byhemat/screens/profile/myads.dart';
import 'package:byhemat/screens/profile/myfavourite.dart';
import 'package:byhemat/screens/profile/mypayment.dart';
import 'package:byhemat/screens/profile/oursupport.dart';
import 'package:byhemat/screens/profile/personal_info/personal_info.dart';
import 'package:byhemat/screens/profile/recentvisit.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedBottomNavigationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textDirection: TextDirection.rtl,
                    'حساب کاربری',
                    style: TextStyle(
                        fontFamily: 'vazir',
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage('assets/icons/profile.png'),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: TextDirection.rtl,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: const Image(
                        width: 48,
                        image: AssetImage('assets/images/me.JPEG'),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 50),
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          'محسن پورزمانی',
                          style: TextStyle(
                              fontFamily: 'vazir',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'تایید شده',
                              style: TextStyle(
                                  fontFamily: 'vazir',
                                  color: Color(0xffe5050e),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Text(
                            textDirection: TextDirection.rtl,
                            '0773425652',
                            style: TextStyle(
                                fontFamily: 'vazir',
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const PersonalInfo(),
              const MyAds(),
              const MyPay(),
              const RecentVisit(),
              const MyFavourite(),
              const AppSetting(),
              const OurSupport(),
              const AboutUs(),
              const SizedBox(
                height: 45,
              ),
              const Text('نسخه ۱.۲.۳')
            ],
          ),
        ),
      ),
    );
  }
}
