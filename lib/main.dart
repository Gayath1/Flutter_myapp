import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:myapp/screens/splashscreen/splash_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: Icons.home,
          duration: 3000,
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.blue,
          nextScreen: MyHomePage(
            title: 'test',
          )
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Container(
          //         height: 100,
          //         width: 100,
          //         color: Colors.blue,
          //       ),
          //       Container(
          //         child: Text('Splash Screen',
          //             style:
          //                 TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
