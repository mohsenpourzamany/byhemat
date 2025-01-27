import 'package:byhemat/screens/profile/personal_info/address_widget.dart';
import 'package:byhemat/screens/profile/personal_info/email_widget.dart';
import 'package:byhemat/screens/profile/personal_info/family_widget.dart';
import 'package:byhemat/screens/profile/personal_info/name_widget.dart';
import 'package:byhemat/screens/profile/personal_info/photo_pickers.dart';
import 'package:byhemat/screens/profile/personal_info/tell_widget.dart';
import 'package:byhemat/screens/profile/personal_info/user_name_widget.dart';
import 'package:byhemat/widget/version_widget.dart';
import 'package:flutter/material.dart';

class PersonalInfoscreen extends StatefulWidget {
  const PersonalInfoscreen({super.key});

  @override
  State<PersonalInfoscreen> createState() => _PersonalInfoscreenState();
}

class _PersonalInfoscreenState extends State<PersonalInfoscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'اطلاعات شخصی',
          style: TextStyle(fontFamily: 'vazir', fontSize: 22),
        ),
      ),
      body: const SafeArea(
          child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            PhotoPickers(),
            SizedBox(
              height: 50,
            ),
            NameWidget(),
            SizedBox(
              height: 12,
            ),
            FamilyWidget(),
            SizedBox(
              height: 12,
            ),
            TellWidget(),
            SizedBox(
              height: 12,
            ),
            UserNameWidget(),
            SizedBox(
              height: 12,
            ),
            EmailWidget(),
            SizedBox(
              height: 12,
            ),
            AddressWidget(),
            Spacer(),
            Versionwidget()
          ],
        ),
      )),
    );
  }
}
