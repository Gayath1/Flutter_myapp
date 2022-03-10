import 'package:flutter/material.dart';
import 'package:myapp/Utilities/routes.dart';
import 'package:myapp/Screens/login/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/',
      routes: {
        MyRoutes.loginScreen: (context) => LoginScreen(),
      },
    );
  }
}
