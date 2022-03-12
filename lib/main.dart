import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/screens/splashscreen/splash_screen.dart';
import 'package:myapp/Utilities/routes.dart';
import 'package:myapp/Screens/login/login_screen.dart';
import 'package:myapp/Screens/signup/signup_screen.dart';

// void main() => runApp(const MyApp());
void main() {
  runApp(MyApp());
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

      // theme: new ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        MyRoutes.loginScreen: (context) => LoginScreen(),
        MyRoutes.signScreen: (context) => SignScreen(),
      },
    );
  }
}
