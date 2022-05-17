import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  String image;
  SocialButton({required this.image});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          splashColor: Color.fromARGB(240, 77, 193, 252),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              image,
              height: 30.0,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
