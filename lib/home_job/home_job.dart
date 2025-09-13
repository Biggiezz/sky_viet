import 'package:chat/assets/image.dart';
import 'package:chat/home_job/widget/closed_job.dart';
import 'package:chat/home_job/widget/doing_job.dart';
import 'package:chat/home_job/widget/done_job.dart';
import 'package:chat/home_job/widget/new_job.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeJob extends StatefulWidget {
  const HomeJob({super.key});

  @override
  State<HomeJob> createState() => _HomeJobState();
}

class _HomeJobState extends State<HomeJob>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:  Text(
          'Công việc',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
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
                  width: 276.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF7A7A7A).withValues(alpha: 0.20),
                        blurRadius: 21.94,
                        offset: const Offset(0, 10.97),
                      ),
                    ],
                  ),
                  child:  Row(
                    children: [
                      SizedBox(width: 20.w),
                      Icon(Icons.apps),
                      SizedBox(width: 8.w),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Tất cả (52)',
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color:  Color(0xff555770),
                          ),
                          border: InputBorder.none,

                      ))),
                      Spacer(),
                      Icon(Icons.menu),
                      SizedBox(width: 12.w),
                    ],

                  ),

                ),
                Container(
                  width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: const Color(0xFF7A7A7A).withValues(alpha: 0.20),
                          blurRadius: 21.94,
                          offset: const Offset(0, 10.97),
                        ),],
                    ),
                    child: Image.asset(ImageAssets.iconSearch, scale: 1.7)),
              ],

            ),
          ),

          // Tab filter
          TabBar(
            controller: _tabController,
            labelColor: const Color(0xFFC03A2C),
            unselectedLabelColor: const Color(0xFF8F90A6),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.sp,

            ),
            labelStyle:  TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
            indicatorColor: const Color(0xFFC03A2C),

            tabs: const [
              Tab(text: 'Mới tạo'),
              Tab(text: 'Đang làm'),
              Tab(text: 'Hoàn thành'),
              Tab(text: 'Đã đóng'),
            ],
          ),

          // Nội dung theo từng tab
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                NewJob(),
                DoingJob(),
                DoneJob(),
                ClosedJob(),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFd20000),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {},
        child:  Icon(Icons.add, color: Colors.white, size: 32),
      ),
    );
  }
}
