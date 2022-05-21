import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/job.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;
  JobItem(this.job, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Text('Job Item'),
    );
  }
}
