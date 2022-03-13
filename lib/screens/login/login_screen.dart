import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Utilities/routes.dart';
import 'package:myapp/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String _name = '';
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();

  bool isloading = false;
  bool userIsValid = false;
  bool _autoValidate = false;
  String errorMsg = "";

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  validatePassword(String value) {
    if (value.length < 4) {
      return 'Password must be greater 4 characters';
    }
    return null;
  }
  // login() async {
  //   setState(() {
  //     isloading = true;
  //     userIsValid = false;
  //   });
  //   if (_formKey.currentState!.validate()) {
  //     try {
  //       AuthResult result = await _auth.signInWithEmailAndPassword(
  //           email: emailCont.text, password: passCont.text);
  //       FirebaseUser user = result.user;
  //       if (user != null) {
  //         setState(() {
  //           userIsValid = true;
  //         });
  //       } else {
  //         setState(() {
  //           userIsValid = false;
  //         });
  //       }

  //       print(user.email);
  //     } catch (e) {
  //       if (e is PlatformException) {
  //         if (e.code == 'ERROR_USER_NOT_FOUND') {
  //           _showsnack();
  //         }
  //       }
  //     }
  //     setState(() {
  //       isloading = false;
  //     });
  //     //
  //   }

  //   userIsValid
  //       ? Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => Home()))
  //       : null;

  //   //  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  // }

  @override
  Widget build(BuildContext context) {
    //button widgets

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
                  Text("Login",
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
                    child: Form(
                      key: formKey,
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              if (!value.contains('@')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },

                            // onChanged: (value) {
                            //   setState(() {});
                            // },
                            onSaved: (value) {
                              email = value!;
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
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              if (value.length < 4) {
                                return 'Password must be greater 4 characters';
                              }
                              return null;
                            },
                            // onChanged: (value) {
                            //   setState(() {});
                            // },
                            onSaved: (value) {
                              password = value!;
                            },
                          ),
                          SizedBox(height: 10),
                          SizedBox(height: 10),
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
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  debugPrint(
                                      'email: $email and password: $password');
                                }
                              },
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
                                      fontFamily: 'SFPRODISPLAYBOLD',
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'Don\'t Have an account?',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'SFPRODISPLAYBOLD',
                                ),
                              ),
                              TextButton(
                                onPressed: (() {
                                  Navigator.pushNamed(
                                    context,
                                    MyRoutes.signScreen,
                                  );
                                }),
                                // style: TextButton.styleFrom(
                                //   primary: Colors.indigo,
                                // ),
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
