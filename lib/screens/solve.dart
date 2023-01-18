// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Solve extends StatefulWidget {
  Solve({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<Solve> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 50, 350, 10),
                  child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(49, 70, 87, 1),
                        size: 40,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Problema reportado',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 25,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 290, 10),
                  child: Text(
                    'Bloco A',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 260, 10),
                  child: Text(
                    'Sala B-206',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 260, 10),
                  child: Text(
                    'Hora: 10:30',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 130, 10),
                  child: Text(
                    'Problema: Fuga de água',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(80, 10, 10, 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'water.png',
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'water2.png',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.check_circle_outline,
                      size: 20.0,
                    ),
                    label: Text(
                      "Resolvido",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 255, 4),
                      foregroundColor: Color.fromARGB(255, 255, 255, 255),
                      // ignore: prefer_const_constructors
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: Size(380, 50),
                    ),
                    onPressed: () {},
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
