import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../assets/image.dart';

class DoneJob extends StatefulWidget {
  const DoneJob({super.key});

  @override
  State<DoneJob> createState() => _DoneJobState();
}

class _DoneJobState extends State<DoneJob> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildDoneJob(),
            SizedBox(height: 12.h),
            _buildDoneJob(),
            SizedBox(height: 12.h),
            _buildDoneJob(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoneJob() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 225.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF606170).withOpacity(0.16),
            blurRadius: 24,
            offset: const Offset(0, 16),
          ),
          BoxShadow(
            color: const Color(0xFF28293D).withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(ImageAssets.addHome, width: 24.w, height: 24.h),
                    SizedBox(width: 8.w),
                    Text(
                      'CAO TỐC BẮC NAM',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF8F90A6),
                      ),
                    ),
                  ],
                ),
                Image.asset(ImageAssets.flag, width: 24.w, height: 24.w),
              ],
            ),
            SizedBox(height: 16.h),

            // title
            Text(
              'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: const Color(0xFF1C1C28),
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 16.h),

            Row(
              children: [
                Image.asset(ImageAssets.personEdit),
                SizedBox(width: 6.w),
                Text('Trần Tú Anh', style: TextStyle(color: Color(0xFF555770))),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Image.asset(ImageAssets.personTick),
                SizedBox(width: 6.w),
                Text(
                  'Hoàng Thu Hồng',
                  style: TextStyle(color: Color(0xFF555770)),
                ),
              ],
            ),
            SizedBox(height: 16.h),

            // calendar + status
            Row(
              children: [
                Image.asset(ImageAssets.calendar),
                SizedBox(width: 4.w),
                Text('23/03/2023'),
                SizedBox(width: 8.w),
                Image.asset(ImageAssets.fileNewJob),
                Text('0 files'),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xFFE3FFF1),
                  ),
                  child: Text(
                    'HT SỚM',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF05A660),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
