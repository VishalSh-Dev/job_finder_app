import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search_sharp),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 252, 87, 87),
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 2.0,
                ),
              ),
              hintText: 'Enter a search term',
              hintStyle: TextStyle(color: Color.fromARGB(212, 61, 60, 60)),
            ),
          ),
        ),
      ],
    );
  }
}
