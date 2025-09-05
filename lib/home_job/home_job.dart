import 'package:chat/assets/image.dart';
import 'package:chat/home_job/widget/closed_job.dart';
import 'package:chat/home_job/widget/doing_job.dart';
import 'package:chat/home_job/widget/done_job.dart';
import 'package:chat/home_job/widget/new_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeJob extends StatefulWidget {
  const HomeJob({super.key});

  @override
  State<HomeJob> createState() => _HomeJobState();
}

class _HomeJobState extends State<HomeJob> {
  int _currentIndex = 0; // tab hiện tại

  final List<Widget> _pages = const [
    NewJob(),
    DoingJob(),
    DoneJob(),
    ClosedJob(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Công việc',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(ImageAssets.appBarSVG),
            ),
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
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF7A7A7A).withValues(alpha: 0.20),
                          spreadRadius: 0,
                          blurRadius: 21.94,
                          offset: Offset(0, 10.97),
                        ),
                      ]
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
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF7A7A7A).withValues(alpha: 0.20),
                          spreadRadius: 0,
                          blurRadius: 21.94,
                          offset: Offset(0, 10.97),
                        ),
                      ]
                  ),
                  child: Image.asset(ImageAssets.iconSearch, scale: 1.6),
                ),
              ],
            ),
          ),

          // Tab filter
          _buildTapJob(),
          SizedBox(height: 20),
          // Nội dung thay đổi theo tab
          Expanded(
            child: IndexedStack(index: _currentIndex, children: _pages),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFd20000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        child: Stack(
          children:[ Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFC03A2C),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFD20000).withValues(alpha: 0.25),
                  spreadRadius: 0,
                  blurRadius: 24,
                  offset: Offset(4, 8),
                ),
              ],
            ),
          ),
            Center(child: Icon(Icons.add,
            color: Colors.white,
            size: 50,)),
    ]
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
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isActive ? Color(0xFFC03A2C) : const Color(0xFF8F90A6),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
