import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Search Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ))
        ],
      ),
    );
  }
}
