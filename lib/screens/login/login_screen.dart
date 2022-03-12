import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Utilities/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.indigoAccent,
      // ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            Image(
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 35,
              ),
              child: Column(
                children: [
                  TextFormField(
                    cursorColor: Color.fromARGB(255, 255, 255, 255),
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(95, 226, 226, 226),
                      filled: true,
                      // icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 189, 189, 189),
                            width: 2.0),
                      ),
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                          fontFamily: 'SFProText',
                          color: Color.fromARGB(255, 68, 68, 68)),
                      contentPadding: EdgeInsets.all(15.0),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  TextFormField(
                    cursorColor: Color.fromARGB(255, 255, 255, 255),
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(95, 226, 226, 226),
                      filled: true,
                      // icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 189, 189, 189),
                            width: 2.0),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            _toggle();
                          },
                          icon: Icon(
                            _obscureText
                                ? FontAwesomeIcons.eyeSlash
                                : FontAwesomeIcons.eye,
                            color: Color.fromARGB(175, 175, 175, 175),
                          )),
                      // suffixIconConstraints:
                      //     BoxConstraints(maxHeight: 20, maxWidth: 20),
                      hintText: 'Enter Your Password',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          fontFamily: 'SFProText',
                          color: Color.fromARGB(255, 68, 68, 68)),
                      contentPadding: EdgeInsets.all(15.0),
                    ),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, MyRoutes.forgotPassword);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 4, 92, 233),
                        fontFamily: 'SFPRODISPLAYBOLD',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 01,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 14, 203, 255),
                            Color.fromARGB(255, 4, 92, 233)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 15.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SFPRODISPLAYBOLD',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Text('Don\'t have an account?',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SFPRODISPLAYBOLD',
                          )),
                      TextButton(
                        onPressed: (() {
                          Navigator.pushNamed(
                            context,
                            MyRoutes.signScreen,
                          );
                        }),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 4, 92, 233),
                            fontFamily: 'SFPRODISPLAYBOLD',
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
