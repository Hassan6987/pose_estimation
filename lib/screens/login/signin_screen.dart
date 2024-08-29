import 'package:firebase_auth/firebase_auth.dart';
import 'package:pose_estimation/screens/reusable_widget.dart';
import 'package:pose_estimation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:pose_estimation/screens/login/reset_password.dart';
import 'package:pose_estimation/screens/login/signup_screen.dart';
import 'package:pose_estimation/screens/pre login/colorstyle.dart';


import '../../main.dart';
class SignInScreen extends StatefulWidget {
  static const String routeName = '/sign_in';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/yoga80.jpg"), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),

          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                titleSubtitle(),

                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen(camera)));
                  }).onError((error, stackTrace) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Error"),
                          content: Text("Incorrect email or password."),
                          actions: [
                            ElevatedButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  });
                },Colors.blue),
                signUpOption()
              ],
            ),
        ),
      ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: kFirstColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ResetPassword())),
      ),
    );
  }


  Container titleSubtitle() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 50),
            RichText(
              text: const TextSpan(
                  text: 'FIT\t',
                  style: TextStyle(
                    fontFamily: "Bebas",
                    fontSize: 30,
                    letterSpacing: 5,
                  ),
                  children: [
                    TextSpan(
                      text: 'TRACK',
                      style: TextStyle(
                        color: kFirstColor,
                      ),
                    )
                  ]),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  RichText(
                    text: const TextSpan(
                        text: 'SIGN\t',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kFirstColor,
                          fontSize: 40,
                          letterSpacing: 5,
                        ),
                        children: [
                          TextSpan(
                            text: 'IN',
                            style: TextStyle(
                              color: Colors.white,

                            ),
                          )
                        ]),
                  ),
               /*   Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 40,
                      color: kFirstColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),*/
                  SizedBox(height: 10),
                  Text(
                    "Train and live new experience \nof exercising"
                        " at home",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
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
