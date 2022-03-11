import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Utilities/routes.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  State<SignScreen> createState() => _SignScreenState();
}

class _SignScreenState extends State<SignScreen> {
  bool _obscureText = true;
  String _icons = 'FontAwesomeIcons.eyeSlash';
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      _icons =
          _obscureText ? 'FontAwesomeIcons.eyeSlash' : 'FontAwesomeIcons.eye';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  // Image(
                  //     image: AssetImage('assets/images/login.png'),
                  //     fit: BoxFit.cover,
                  //     height: 180),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
                  Text("Sign Up",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'SFPRODISPLAYBOLD',
                      )),
                  SizedBox(height: 10),
                  SizedBox(height: 10),
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
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189),
                                  width: 2.0),
                            ),

                            hintText: 'First Name',
                            hintStyle: TextStyle(
                              fontFamily: 'SFProText',
                            ),
                            labelText: 'First Name',
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
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(95, 226, 226, 226),
                            filled: true,
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189),
                                  width: 2.0),
                            ),
                            hintText: 'Last Name',
                            hintStyle: TextStyle(
                              fontFamily: 'SFProText',
                            ),
                            labelText: 'Last Name',
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
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(95, 226, 226, 226),
                            filled: true,
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189),
                                  width: 2.0),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              fontFamily: 'SFProText',
                            ),
                            labelText: 'Email',
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
                          obscureText: _obscureText,
                          cursorColor: Color.fromARGB(255, 255, 255, 255),
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(95, 226, 226, 226),
                            filled: true,
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189)),
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
                            hintText: 'Password',
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
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        TextFormField(
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            fillColor: Color.fromARGB(95, 226, 226, 226),
                            filled: true,
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 189, 189, 189)),
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
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              fontFamily: 'SFProText',
                            ),
                            labelText: 'Confirm Password',
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
                          style: TextButton.styleFrom(
                            primary: Colors.indigo,
                          ),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'SFPRODISPLAYBOLD',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 01,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 15.0,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontFamily: 'SFPRODISPLAYBOLD',
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Have an account?',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'SFPRODISPLAYBOLD',
                              ),
                            ),
                            TextButton(
                              onPressed: (() {
                                Navigator.pushNamed(
                                  context,
                                  MyRoutes.loginScreen,
                                );
                              }),
                              style: TextButton.styleFrom(
                                primary: Colors.indigo,
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 15,
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
          ),
        ),
      ),
    );
  }
}
