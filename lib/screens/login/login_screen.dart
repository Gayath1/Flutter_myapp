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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    decoration: InputDecoration(
                      // icon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintText: 'Enter Your Email',
                      hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
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
                      hintStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontFamily: 'SFProText',
                      ),
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
                        style: TextButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: const Text(
                          'Sign Up',
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
    );
  }
}
