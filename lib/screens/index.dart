// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_dev/screens/auth.dart';
import 'package:flutter_dev/screens/login_funcionarios.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
                child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                child: SizedBox(),
                padding: EdgeInsets.fromLTRB(50, 80, 10, 40)),
            Image.asset(
              'image.png',
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Bem-vindo!!',
              style: TextStyle(
                color: Color.fromRGBO(49, 70, 87, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Bem-vindo á nossa APP, uma plataforma onde pode gerir os problemas da sua empresa.',
              style: TextStyle(
                color: Color.fromRGBO(49, 70, 87, 1),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: ((context) => Auth())));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromRGBO(49, 70, 87, 1),
                backgroundColor: Color.fromRGBO(227, 166, 53, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minimumSize: Size(350, 50),
              ),
              child: Text("Alunos"),
            ),
            SizedBox(
              height: 16,
            ),
            // ignore: unnecessary_new
            new ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginFunc()));
              },
              // ignore: sort_child_properties_last
              child: Text(
                'Funcionários',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(49, 70, 87, 1),
                foregroundColor: Color.fromRGBO(227, 166, 53, 1),
                // ignore: prefer_const_constructors
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                minimumSize: Size(350, 50),
              ),
            ),
          ],
        ))));
  }
}
