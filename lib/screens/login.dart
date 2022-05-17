import 'package:flutter/material.dart';
import 'package:job_finder_app/reusable%20widget/socialbutton.dart';
import 'package:job_finder_app/reusable%20widget/textField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(children: [
            Image.asset(
              'assets/images/logo.jpg',
              height: 120,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 70),
              child: Text(
                "JOBIFY",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MyTextField(
                hint: "Email",
                controller: _emailController,
                inputType: TextInputType.emailAddress,
                isPassword: false),
            MyTextField(
                hint: "Password",
                controller: _passwordController,
                inputType: TextInputType.text,
                isPassword: true),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Text("---------------OR Login With---------------"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(image: 'assets/images/google.png'),
                SocialButton(image: 'assets/images/facebook.png'),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ]),
        )),
      ),
    );
  }
}
