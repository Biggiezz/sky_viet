import 'package:flutter/material.dart';

class ClosedJob extends StatefulWidget {
  const ClosedJob({super.key});

  @override
  State<ClosedJob> createState() => _ClosedJobState();
}

class _ClosedJobState extends State<ClosedJob> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Trang công việc Đã đóng"),
    );
  }
}
