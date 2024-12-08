import 'package:flutter/material.dart';

class SignUpIn extends StatelessWidget {
  const SignUpIn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ورود ـ ثبت نام'),
          bottom: const TabBar(
            indicatorColor: Color(0xffe5050e),

            labelColor: Color(0xffe5050e),
            labelStyle: TextStyle(
              fontSize: 18.0,
              fontFamily: 'vazir',
            ), //For Selected tab
            unselectedLabelStyle: TextStyle(
                fontSize: 16.0, fontFamily: 'vazir'), //For Un-selected Tabs
            tabs: [
              Tab(
                text: 'ورود',
              ),
              Tab(text: 'ثبت نام'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            LoginCard(),
            SignupCard(),
          ],
        ),
      ),
    );
  }
}

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Image(
                width: 120,
                image: AssetImage('assets/images/512.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 38),
                  backgroundColor: const Color(0xffe5050e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'ورود',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignupCard extends StatelessWidget {
  const SignupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Image(
                width: 120,
                image: AssetImage('assets/images/512.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              const TextField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  // Handle signup logic here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 38),
                  backgroundColor: const Color(0xffe5050e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'ثبت نام',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'vazir',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
