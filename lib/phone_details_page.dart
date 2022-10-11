import 'dart:ui';

import 'package:dialog_creation/dialog_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'reusable.dart';
import 'dialog_page.dart';

class PhoneDetailsPage extends StatefulWidget {
  const PhoneDetailsPage({Key? key}) : super(key: key);

  @override
  State<PhoneDetailsPage> createState() => _PhoneDetailsPageState();
}

class _PhoneDetailsPageState extends State<PhoneDetailsPage> {
  void keypress(String Image, String Name, String Email) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.transparent,
              insetPadding: const EdgeInsets.all(5),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                side: BorderSide(color: Colors.black12),
              ),
              content: Builder(builder: (context) {
                var height = MediaQuery.of(context).size.height;
                var width = MediaQuery.of(context).size.width;
                return BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 5,
                    sigmaX: 5,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Dialogue(image: Image, name: Name, email: Email),
                    height: height - 250,
                    width: width - 250,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                );
              }),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // if you need this
                  side: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                    width: 2,
                  ),
                ),
                shadowColor: Colors.black,
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 50.0),
                      Text(
                        'Gokula Rajan T',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontSize: 22.0),
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        onTap: () {
                          keypress('images/gokul11.jpeg', 'Gokula Rajan T',
                              '  rajan@vitap.ac.in');
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('images/gokul11.jpeg'),
                        ),
                      )
                      // CircleAvatar(
                      //   radius: 50,
                      //   //   ,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per1.jpg', 'Ajith kumar',
                              '  ajith@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per1.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Ajith kumar",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per2.jpg', 'Disha Patani',
                              '  disha@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per2.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Disha Patani",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per3.jpg', 'Samantha',
                              '   Sam@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per3.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Samantha",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per4.jpg', 'Angelina Jollie',
                              '   angelina@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per4.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Angelina Jollie",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per5.jpg', 'Jackie chan',
                              '   chan@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per5.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Jackie chan",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Row(
                    children: [
                      Reusable(
                        onpress: () {
                          keypress('images/per6.jpg', 'Muniyandi',
                              '   Muni@gmail.com');
                        },
                        cardchild: const CircleAvatar(
                          backgroundImage: AssetImage('images/per6.jpg'),
                        ),
                      ),
                      SizedBox(width: 20),
                      const Text(
                        "Muniyandi",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
