import 'package:flutter/material.dart';

class DoingJob extends StatefulWidget {
  const DoingJob({super.key});

  @override
  State<DoingJob> createState() => _DoingJobState();
}

class _DoingJobState extends State<DoingJob> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Trang công việc Đang làm"),
    );
  }
}
