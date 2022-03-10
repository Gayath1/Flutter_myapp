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
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
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
                  Image(
                      image: AssetImage('assets/images/login.png'),
                      fit: BoxFit.cover,
                      height: 180),
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
                                  color: Color.fromARGB(255, 189, 189, 189)),
                            ),
                            hintText: 'Enter Your Email',
                            labelText: 'Username',
                            labelStyle: TextStyle(
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
                          decoration: InputDecoration(
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Enter Your Email',
                            labelText: 'Username',
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Enter Your Email',
                            labelText: 'Username',
                            contentPadding: EdgeInsets.all(15.0),
                          ),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            // icon: Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Enter Your Email',
                            labelText: 'Username',
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
                            // icon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _toggle();
                                },
                                icon: Icon(
                                  FontAwesomeIcons.eyeSlash,
                                  color: Color.fromARGB(175, 175, 175, 175),
                                )),
                            // suffixIconConstraints:
                            //     BoxConstraints(maxHeight: 20, maxWidth: 20),
                            hintText: 'Enter Your Password',
                            labelText: 'Password',
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
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const Text('Have an account?'),
                            TextButton(
                              onPressed: (() {
                                Navigator.pushNamed(
                                  context,
                                  MyRoutes.loginScreen,
                                );
                              }),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
