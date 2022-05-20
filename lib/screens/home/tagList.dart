import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  TagList({Key? key}) : super(key: key);

  @override
  TagListState createState() => TagListState();
}

class TagListState extends State<TagList> {
  final tagsList = <String>['✅ All', '🔥 Popular', '🌟 Featured'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      height: 44,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 9,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor.withOpacity(0.1)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(17),
                    border: Border.all(
                      color: selected == index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).primaryColor.withOpacity(0.4),
                    )),
                child: Text(tagsList[index]),
              )),
          separatorBuilder: (_, index) => SizedBox(
                width: 28,
              ),
          itemCount: tagsList.length),
      //itemCount: null,
      //separatorBuilder: (BuildContext context, int index) {},
    );
  }
}
