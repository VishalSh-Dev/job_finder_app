import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/home/job_list.dart';
import 'package:job_finder_app/screens/home/search_card.dart';
import 'package:job_finder_app/screens/home/tagList.dart';

import 'home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[90],
      body: Stack(children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [HomeAppBar(), SearchCard(), TagList(), JobList()],
        )
      ]),
    );
  }
}
