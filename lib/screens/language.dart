import 'package:flutter/material.dart';

class AppLanguage extends StatelessWidget {
  const AppLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('انتخاب زبان'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const Image(
                width: 130,
                image: AssetImage('assets/images/512.png'),
              ),
              const Spacer(),
              const Text(
                textDirection: TextDirection.rtl,
                'زبان مورد نظر را انتخاب کنید .',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   // return Signup();
                  // }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffa8bdc6),
                  minimumSize: const Size(350, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    ' فارسی ',
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
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   // return Signup();
                  // }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffa8bdc6),
                  minimumSize: const Size(350, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    ' پشتو ',
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
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   // return Signup();
                  // }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffa8bdc6),
                  minimumSize: const Size(350, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'انگلیسی',
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
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) {
                  //   // return Signup();
                  // }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffa8bdc6),
                  minimumSize: const Size(350, 43),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    'عربی',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'vazir',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'با بای همت سریعتر بفروشید',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                '!و آسانتر بخرید',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Text(
                'ورژن ۱.۰۱',
                style: TextStyle(
                    fontFamily: 'vazir',
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
