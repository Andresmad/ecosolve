// ignore_for_file: unnecessary_new, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_dev/screens/home_func.dart';

// ignore: unused_import
import 'screens/login_alunos.dart';
// import 'screens/registoalunos.dart';
import 'screens/login_funcionarios.dart';
import 'screens/auth.dart';
import 'screens/index.dart';
import 'screens/home_alunos.dart';
import 'screens/problema.dart';
import 'screens/problem_solve.dart';
import 'screens/solve.dart';

// import 'dbHelper/mongodb.dart';

void main() async {
  runApp(MyApp());

//   WidgetsFlutterBinding.ensureInitialized();
//   await MongoDatabase.connect();
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EcoSolve',
      //home: Index(),
      initialRoute: '/index',
      routes: {
        '/': (_) => Index(),
        '/login-alunos': (_) => LoginAlunos(),
        '/login-funcionarios': (_) => LoginFunc(),
        '/home-alunos': (_) => HomeAlunos(),
        '/auth': (_) => Auth(),
        '/home-func': (_) => HomeFunc(),
        '/problem': (_) => Problem(),
        '/problem_solve': (_) => Probsolve(),
        '/solve': (_) => Solve()
      },
    );
  }
}
