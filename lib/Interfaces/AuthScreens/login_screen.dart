import 'package:flutter/material.dart';
import 'package:mobo_app/Config/app_theme.dart';
import 'package:mobo_app/Config/images.dart';
import 'package:mobo_app/Interfaces/AuthScreens/forgot_password_screen.dart';
import 'package:mobo_app/Interfaces/AuthScreens/signup_screen.dart';

import '../../Config/strings.dart';

class FireBaseLoginPage extends StatefulWidget {
  const FireBaseLoginPage({Key? key}) : super(key: key);

  @override
  State<FireBaseLoginPage> createState() => _FireBaseLoginPageState();
}

class _FireBaseLoginPageState extends State<FireBaseLoginPage> {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  userLogin() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30, top: 80),
        child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Image.asset(
                  Images.ScreenImage1,
                  height: 140,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    CustomStrings.header6,
                    style: TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        } else if (!value.contains("@")) {
                          return "Please Enter Valid Email";
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.white,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  //color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          errorBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          labelText: "Email",
                          labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold))),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: TextFormField(
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      controller: passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Email";
                        } else if (!value.contains("@")) {
                          return "Please Enter Valid Email";
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.white,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  //color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          errorBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          labelText: "Password",
                          labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage(),
                            ));
                      },
                      child: Text(
                        "Forgot Password ?",
                        style: TextStyle(
                            color: Colors.black38, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: FlatButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  email = emailController.text;
                                  password = passwordController.text;
                                });
                                userLogin();
                              }
                            },
                            child: Text(
                              "login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage(),
                            ));
                      },
                      child: Text(
                        "Or continue with",
                        style: TextStyle(
                            color: Colors.black12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.ScreenImage3,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Images.ScreenImage2,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account ?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          )),
                    ],
                  ),
                ))
              ],
            )),
      ),
    );
  }
}
