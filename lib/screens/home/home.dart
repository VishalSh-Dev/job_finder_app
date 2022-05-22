import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/home/job_list.dart';
import 'package:job_finder_app/screens/home/search_card.dart';
import 'package:job_finder_app/screens/home/tagList.dart';

import '../../reusable widget/recent_job.dart';
import 'home_app_bar.dart';

class HomePage extends StatelessWidget {
  final List recentJobs = [
    ['Nike', 'Web Designer', 'assets/images/nike.png', 20],
    ['Google', 'Product Dev', 'assets/images/google.png', 44],
    ['Apple', 'Software Eng', 'assets/images/apple.png', 90],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          children: [
            HomeAppBar(),
            SearchCard(),
            TagList(),
            JobList(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Recently Added',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  itemCount: recentJobs.length,
                  itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                      jobTitle: recentJobs[index][1],
                      logoImagePath: recentJobs[index][2],
                      hourlyRate: recentJobs[index][3],
                    );
                  },
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
