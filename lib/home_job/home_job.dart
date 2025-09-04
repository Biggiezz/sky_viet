import 'package:chat/home_job/widget/closed_job.dart';
import 'package:chat/home_job/widget/doing_job.dart';
import 'package:chat/home_job/widget/done_job.dart';
import 'package:chat/home_job/widget/new_job.dart';
import 'package:flutter/material.dart';

class HomeJob extends StatefulWidget {
  const HomeJob({super.key});

  @override
  State<HomeJob> createState() => _HomeJobState();
}

class _HomeJobState extends State<HomeJob> {
  int _currentIndex = 0; // tab hiện tại

  // final List<Widget> _pages = [
  //   Center(child: Text("Danh sách công việc mới tạo")),
  //   Center(child: Text("Danh sách công việc đang làm")),
  //   Center(child: Text("Danh sách công việc hoàn thành")),
  //   Center(child: Text("Danh sách công việc đã đóng")),
  // ];
  final List<Widget> _pages = const [
    NewJob(),
    Center(child: Text("Danh sách công việc mới tạo")),
    DoingJob(),
       Center(child: Text("Danh sách công việc đang làm")),
    DoneJob(),
       Center(child: Text("Danh sách công việc hoàn thành")),

    ClosedJob(),
       Center(child: Text("Danh sách công việc đã đóng")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        notificationPredicate: defaultScrollNotificationPredicate,
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Công việc',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          // Thanh filter (Tất cả + Search)
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 330,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: const [
                      SizedBox(width: 20),
                      Icon(Icons.apps),
                      SizedBox(width: 8),
                      Text("Tất cả"),
                      Spacer(),
                      Icon(Icons.menu),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
                const SizedBox(width: 11),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.search_sharp, size: 40),
                ),
              ],
            ),
          ),

          // Tab filter
          _buildTapJob(),

          // Nội dung thay đổi theo tab
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: _pages,
            ),
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFd20000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildTapJob() {
    final tabs = ["Mới tạo", "Đang làm", "Hoàn thành", "Đã đóng"];

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 11, 0),
      child: Container(
        height: 40,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(tabs.length, (index) {
            final isActive = _currentIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Text(
                tabs[index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isActive ? Colors.redAccent : const Color(0xFF8F90A6),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
