// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/screens/problem_solve.dart';
import 'package:flutter_dev/screens/problema.dart';
import './login_funcionarios.dart';
import './problem_solve.dart';

class HomeFunc extends StatefulWidget {
  HomeFunc({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomeFunc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(280, 100, 10, 10),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.logout,
                    color: Color.fromRGBO(49, 70, 87, 1),
                    size: 40,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              //Butões
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 10, 10, 10),
                  child: Row(
                    children: [
                      SizedBox(
                        child: ElevatedButton.icon(
                          icon: Icon(
                            Icons.cancel_outlined,
                            size: 24.0,
                          ),
                          label: Text(
                            "Problema",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor: Color.fromARGB(237, 243, 20, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            minimumSize: Size(180, 50),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        child: Container(
                          child: ElevatedButton.icon(
                            label: Text(
                              'Resolvido',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            icon: Icon(
                              Icons.check_circle_outline,
                              size: 24,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Probsolve())));
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Color.fromARGB(255, 0, 255, 4),
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              minimumSize: Size(180, 50),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              // ignore: unnecessary_new
              new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Problem()));
                },
                child: Container(
                  width: 400,
                  height: 42,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromRGBO(227, 166, 53, 1),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Problema: Luz ligada",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Text(
                              "Sala: B-206",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(
                              flex: 2,
                            ),
                            const Icon(
                              Icons.cancel_outlined,
                              color: Color.fromARGB(237, 243, 20, 20),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(227, 166, 53, 1),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Problema: Computador ligado",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "Sala: B-202",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                            color: Color.fromARGB(237, 243, 20, 20),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(227, 166, 53, 1),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Problema: Projetor ligado",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "Sala: C-302",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                            color: Color.fromARGB(237, 243, 20, 20),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(49, 70, 87, 1),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Problema: Fuga de água",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "WC",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                            color: Color.fromARGB(237, 243, 20, 20),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 400,
                height: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(49, 70, 87, 1),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Problema: Fuga de água",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text(
                            "Sala: A-101",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                            color: Color.fromARGB(237, 243, 20, 20),
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
