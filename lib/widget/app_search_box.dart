import 'package:flutter/material.dart';

class AppSearchBox extends StatefulWidget {
  const AppSearchBox({super.key});

  @override
  State<AppSearchBox> createState() => _AppSearchBoxState();
}

class _AppSearchBoxState extends State<AppSearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  readOnly: false,
                  onTap: () {
                    //Go to the next screen
                  },
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: const EdgeInsets.all(15),
                        width: 18,
                        child: const Icon(Icons.search),
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
