import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/login.dart';

import '../reusable widget/socialbutton.dart';
import '../reusable widget/textField.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _numberController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(202, 213, 212, 212),
        elevation: 0,
        title: Text("Sign Up"),
      ),*/
      body: Container(
        child: Center(
            child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/images/logo.png',
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Recruit",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "DUCK",
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 204, 45),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register below with your details",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            MyTextField(
                hint: "Name",
                controller: _nameController,
                inputType: TextInputType.name,
                isPassword: false,
                iconData: Icons.face),
            MyTextField(
                hint: "Phone",
                controller: _numberController,
                inputType: TextInputType.number,
                isPassword: false,
                iconData: Icons.phone_android),
            MyTextField(
              hint: "Email",
              controller: _emailController,
              inputType: TextInputType.emailAddress,
              isPassword: false,
              iconData: Icons.email,
            ),
            MyTextField(
              hint: "Password",
              controller: _passwordController,
              inputType: TextInputType.text,
              isPassword: true,
              iconData: Icons.password,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text("---------------OR Sign Up With---------------"),
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: const Text(
                    "Login Here ",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                )
              ],
            )
          ]),
        )),
      ),
    );
  }
}
