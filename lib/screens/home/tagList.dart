import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  TagList({Key? key}) : super(key: key);

  @override
  TagListState createState() => TagListState();
}

class TagListState extends State<TagList> {
  final tagsList = <String>['All', '🔥 Popular', '🌟 Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                child: Text(tagsList[index]),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: tagsList.length),
    );
  }
}
