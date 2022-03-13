import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/Utilities/routes.dart';
import 'package:myapp/Screens/login/login_screen.dart';
import 'package:myapp/Screens/signup/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() => runApp(const MyApp());
void main() {
  runApp(
    MyApp(),
  );
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color.fromARGB(255, 255, 255, 255),
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: new StreamBuilder(
      //   // stream: auth.onAuthStateChanged,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return Home();
      //     }
      //     return LoginScreen();
      //   },
      // ),
      routes: {
        MyRoutes.loginScreen: (context) => LoginScreen(),
        MyRoutes.signScreen: (context) => SignScreen(),
        MyRoutes.homeScreen: (context) => Home(),
      },
    );
    // home: new RootPage(auth: new Auth()),
    // theme: new ThemeData(primarySwatch: Colors.indigo),
    // initialRoute: '/',
    // routes: {
    //   MyRoutes.loginScreen: (context) => LoginScreen(),
    //   MyRoutes.signScreen: (context) => SignScreen(),
    // },
  }
}

class LoadingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(),
        alignment: Alignment(0.0, 0.0),
      ),
    );
  }
}
