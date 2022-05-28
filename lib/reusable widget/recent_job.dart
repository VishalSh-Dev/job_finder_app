import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/home/job_detail.dart';
import '../screens/job.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;
  final jobList = Job.generateJobs();
  RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) => JobDetail(jobList[0]));
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: EdgeInsets.all(9),
                    height: 45,
                    color: Color.fromARGB(192, 238, 238, 238),
                    child: Image.asset(logoImagePath),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      companyName,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.green[300],
                    child: Text(
                      '\$' + hourlyRate.toString() + '/hr',
                      style: TextStyle(color: Colors.white),
                    ))),
          ]),
        ),
      ),
    );
  }
}
