import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insight/pages/Home.dart';
import 'package:insight/pages/Todo.dart';
import 'package:insight/pages/bottomnav.dart';
import 'package:insight/pages/exrecise.dart';
import 'package:insight/pages/health.dart';
import 'package:insight/pages/signup.dart';
import 'package:insight/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: AuthMethods().getCurrentUser(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return BottomNavy();
          } else {
            return SignUp();
          }
        },
      ),
    );
  }
}
