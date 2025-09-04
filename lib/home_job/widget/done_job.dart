import 'package:flutter/material.dart';

class DoneJob extends StatefulWidget {
  const DoneJob({super.key});

  @override
  State<DoneJob> createState() => _DoneJobState();
}

class _DoneJobState extends State<DoneJob> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Trang công việc Hoàn thành"),
    );
  }
}
