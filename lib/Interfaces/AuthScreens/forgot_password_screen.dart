import 'package:flutter/material.dart';
import 'package:mobo_app/Interfaces/AuthScreens/login_screen.dart';
import 'package:mobo_app/Interfaces/AuthScreens/signup_screen.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  var email = "";

  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  resetPassword() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            "Reset Password",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          )),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  "Reset Lint will be sent to your email ID  ",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Please type your email ID below ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[400]),
                ),
              ],
            ),
          ),
          Expanded(
              child: Form(
                  child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
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
                Container(
                  height: 60,
                  width: 390,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(top: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                              });
                              resetPassword();
                            }
                          },
                          child: Text(
                            "Send Email",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    height: 60,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
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
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
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
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "User Main",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ))
                  ],
                ))
              ],
            ),
          )))
        ],
      ),
    );
  }
}
