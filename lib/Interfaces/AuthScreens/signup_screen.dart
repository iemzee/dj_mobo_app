
import 'package:flutter/material.dart';
import 'package:mobo_app/Interfaces/AuthScreens/login_screen.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  var email = "";
  var password = "";
  var conformpassword = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformpasswordeController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    conformpasswordeController.dispose();
    super.dispose();
  }

  registration() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "SignUpPage",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
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
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.blue))),
                ),
                SizedBox(
                  height: 20,
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
                                  color: Colors.black12,
                                  width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  //color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          errorBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  // color: Color.fromARGB(255, 232, 232, 232),
                                  color: Colors.black12,
                                  width: 2.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          labelText: "Password",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.blue))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextFormField(
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      controller: conformpasswordeController,
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
                                  color: Colors.black12,
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
                          labelText: "ConformPassword",
                          labelStyle:
                              TextStyle(fontSize: 18, color: Colors.blue))),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: FlatButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  email = emailController.text;
                                  password = passwordController.text;
                                  conformpassword =
                                      conformpasswordeController.text;
                                });
                                registration();
                              }
                            },
                            child: Text(
                              "Sign up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "You have an Account ?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FireBaseLoginPage(),
                              ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
