import 'package:flutter/material.dart';
import 'package:flutter_dev/screens/problema.dart';
import 'package:flutter_dev/screens/solve.dart';
import './login_funcionarios.dart';
import './home_func.dart';

class Probsolve extends StatefulWidget {
  Probsolve({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<Probsolve> {
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomeFunc())));
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Color.fromARGB(237, 243, 20, 20),
                            backgroundColor: Color.fromARGB(237, 255, 255, 255),
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
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              backgroundColor: Color.fromARGB(255, 0, 255, 4),
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
              Container(
                  alignment: Alignment.center,
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.cleaning_services_outlined,
                      size: 18.0,
                    ),
                    label: Text(
                      "Limpar",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      foregroundColor: Color.fromRGBO(49, 70, 87, 1),
                      // ignore: prefer_const_constructors
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: Size(250, 50),
                    ),
                    onPressed: () {},
                  )),
              SizedBox(
                height: 50,
              ),
              // ignore: unnecessary_new
              new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Solve()));
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
                              Icons.check_circle_outline,
                              color: Color.fromARGB(255, 0, 255, 4),
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
                            Icons.check_circle_outline,
                            color: Color.fromARGB(255, 0, 255, 4),
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
                            Icons.check_circle_outline,
                            color: Color.fromARGB(255, 0, 255, 4),
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
                            Icons.check_circle_outline,
                            color: Color.fromARGB(255, 0, 255, 4),
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
                            Icons.check_circle_outline,
                            color: Color.fromARGB(255, 0, 255, 4),
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
