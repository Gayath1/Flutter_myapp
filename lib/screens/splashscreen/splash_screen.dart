import 'package:flutter/material.dart';
import 'package:myapp/screens/home/home.dart';

class Splash extends StatefulWidget {
  // const Splash({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  initState() {
    super.initState();
    _navigatetohome();
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/home');
    // });
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyHomePage(
                    title: 'test',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('Splash Screen',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
