import 'package:byhemat/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  bool _onEditing = true;
  // ignore: unused_field
  String? _code;

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('کد تایید'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Image(
            width: 120,
            image: AssetImage('assets/images/512.png'),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'کد تایید را وارد کنید ',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          VerificationCode(
            textStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Theme.of(context).primaryColor),
            keyboardType: TextInputType.number,
            underlineColor: const Color(
                0xffe5050e), // If this is null it will use primaryColor: Colors.red from Theme
            length: 5,
            cursorColor: const Color.fromARGB(255, 2, 105,
                189), // If this is null it will default to the ambient
            // clearAll is NOT required, you can delete it
            // takes any widget, so you can implement your design
            // clearAll: Padding(
            //   padding: const EdgeInsets.all(20.0),
            //   child: Text(
            //     'پاک کن ',
            //     style: TextStyle(
            //         fontFamily: 'vazir',
            //         fontSize: 16.0,
            //         decoration: TextDecoration.underline,
            //         color: Colors.blue[700]),
            //   ),
            // ),

            margin: const EdgeInsets.all(4),
            onCompleted: (String value) {
              setState(() {
                _code = value;
              });
            },
            onEditing: (bool value) {
              setState(() {
                _onEditing = value;
              });
              if (!_onEditing) FocusScope.of(context).unfocus();
            },
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: _onEditing
                  ? const Text('کد تایید شما')
                  : Text('کد شما : $_code'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'کد را دوباره بفرست',
              style: TextStyle(
                  fontFamily: 'vazir',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffe5050e)),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const MainPage();
              }));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(320, 45),
              backgroundColor: const Color(0xffe5050e),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: const BorderSide(color: Color(0xffa8bdc6), width: 1),
              ),
            ),
            child: const MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                'مرحله بعد',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'vazir',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
