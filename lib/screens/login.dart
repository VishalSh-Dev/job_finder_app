import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/reusable%20widget/socialbutton.dart';
import 'package:job_finder_app/reusable%20widget/textField.dart';
import 'package:job_finder_app/screens/signup.dart';

class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({Key? key, required this.showRegisterPage}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  Future signIn() async {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
            child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
        ));
      },
    );
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Welcome back, you\'ve been missed!",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 50,
            ),
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
              child: ElevatedButton.icon(
                icon: Icon(Icons.login_rounded),
                label: Text("Login"),
                style: ElevatedButton.styleFrom(
                  textStyle:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  primary: Color.fromARGB(255, 255, 235, 59),
                  onPrimary: Colors.black87,
                  elevation: 2,
                  shadowColor: Colors.yellow,
                  side: BorderSide(
                      color: Color.fromARGB(97, 136, 135, 135), width: 2),
                  alignment: Alignment.center,
                ),
                onPressed: signIn,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Working');
                  },
                  child: const Text(
                    "Forgot Password ",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                )
              ],
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont have account yet? ",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
                GestureDetector(
                  onTap: widget.showRegisterPage,
                  child: const Text(
                    "Signup ",
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
