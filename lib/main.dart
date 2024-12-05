import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: GetBodyWidget(),
        ));
  }
}

class GetBodyWidget extends StatelessWidget {
  const GetBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (context) {
                      //   // return Signup();
                      // }));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(20, 35),
                      backgroundColor: const Color(0xffe5050e),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        'Fa',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'vazir',
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Image(
              width: 180,
              image: AssetImage('assets/images/512.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'بازاری به وسعت افغانستان',
              style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 23,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              textDirection: TextDirection.rtl,
              'در بای همت آگهی های خود را به نمایش گذاشته ',
              style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              textDirection: TextDirection.rtl,
              'و به راحتی فروشنده شوید.',
              style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   // return Signup();
                    // }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffa8bdc6),
                    minimumSize: const Size(150, 43),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'ثبت نام ',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'vazir',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   // return Signup();
                    // }));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 43),
                    backgroundColor: const Color(0xffe5050e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'ورود',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'vazir',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
