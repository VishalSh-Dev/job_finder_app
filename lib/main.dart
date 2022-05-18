import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_app/screens/home/home.dart';
import 'package:job_finder_app/screens/splash.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Job Finder App',
        theme: ThemeData(
          primaryColor: Color.fromARGB(241, 255, 107, 107),
          accentColor: Color.fromARGB(240, 47, 36, 44),
        ),
        home: HomePage());
  }
}
