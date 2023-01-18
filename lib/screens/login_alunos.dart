import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:flutter_dev/screens/MongoDBModel.dart';
import 'package:flutter_dev/dbHelper/mongodb.dart';
import 'package:mongo_dart/mongo_dart.dart' as M;
import './auth.dart';
import './home_alunos.dart';

class LoginAlunos extends StatefulWidget {
  LoginAlunos({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<LoginAlunos> {
  var emailController = new TextEditingController();
  var passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String user_email = '';
  String user_password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
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
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 50, 300, 10),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 210, 10),
                  child: Text(
                    'Faça login para continuar',
                    style: TextStyle(
                      color: Color.fromRGBO(49, 70, 87, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 86,
                ),
                SizedBox(
                  width: 260,
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your email address';
                      }
                      // Check if the entered email has the right format
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      // Return null if the entered email is valid
                      return null;
                    },
                    onChanged: (value) => user_email = value,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(49, 70, 87, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 86,
                ),
                SizedBox(
                  width: 260,
                  child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'This field is required';
                      }
                      if (value.trim().length < 8) {
                        return 'Password must be at least 8 characters in length';
                      }
                      // Return null if the entered password is valid
                      return null;
                    },
                    onChanged: (value) => user_password = value,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Color.fromRGBO(49, 70, 87, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(height: 70),
                Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(227, 166, 53, 1),
                          foregroundColor: Color.fromRGBO(49, 70, 87, 1),
                          // ignore: prefer_const_constructors
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minimumSize: Size(350, 50),
                        ),
                        onPressed: () {
                          _insertData(
                              emailController.text, passwordController.text);
                        },
                        child: Text("Login"))),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _insertData(String email, String password) async {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(user_email);
      debugPrint(user_password);
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => HomeAlunos())));

      //   var _id = M.ObjectId();
      //   final data =
      //       MongoDbModel(id: _id, user_email: email, user_password: password);
      //   var result = await MongoDatabase.insert(data);
      //   ScaffoldMessenger.of(context)
      //       .showSnackBar(SnackBar(content: Text("Inserted ID" + _id.$oid)));
      //   _clearAll();
      // } else {
      //   ScaffoldMessenger.of(context)
      //       .showSnackBar(SnackBar(content: Text("Error")));
    }
  }

  void _clearAll() {
    emailController.text = "";
    passwordController.text = "";
  }
}
