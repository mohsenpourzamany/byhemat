import 'package:byhemat/core/I18n/translations.dart';
import 'package:byhemat/screens/register/signup.dart';
import 'package:byhemat/widget/dropdown_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: AppTranslations(),
        locale: const Locale('Fa'),
        debugShowCheckedModeBanner: false,
        home: const Scaffold(
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: DropdownLang(),
                ),
              ],
            ),
            const Spacer(),
            const Image(
              width: 180,
              image: AssetImage('assets/images/512.png'),
            ),
            const SizedBox(
              height: 40,
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
              'در بای همت سریعتر بفروشید ',
              style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              textDirection: TextDirection.rtl,
              'و آسان تر بخرید.',
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
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const SignUpIn();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 43),
                    backgroundColor: const Color(0xffe5050e),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                      side:
                          const BorderSide(color: Color(0xffa8bdc6), width: 3),
                    ),
                  ),
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      'ورود',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'vazir',
                        fontSize: 22,
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
