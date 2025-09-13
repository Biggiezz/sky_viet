import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoingJobAdmin extends StatefulWidget {
  const DoingJobAdmin({super.key});

  @override
  State<DoingJobAdmin> createState() => _DoingJobAdminState();
}

class _DoingJobAdminState extends State<DoingJobAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildJobDoneEarly(),
              SizedBox(height: 12.h),
              _JobDone(),
              SizedBox(height: 12.h),
              _buildJobDoneEarly(),
              SizedBox(height: 12.h),
              _JobDone(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobDoneEarly() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 275.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff606170).withValues(alpha: 0.16),
            offset: Offset(0, 16),
            blurRadius: 24,
          ),
          BoxShadow(
            color: Color(0xff606170).withValues(alpha: 0.04),
            offset: Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(ImageAssets.addHome, width: 24.w, height: 24.h),
                    SizedBox(width: 8.w),
                    Text(
                      'CAO TỐC BẮC NAM',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8F90A6),
                      ),
                    ),
                  ],
                ),
                Image.asset(ImageAssets.flag, width: 24.w, height: 24.h),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 295.h,
                  child: Text(
                    'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1C1C28),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(ImageAssets.personEdit),
                SizedBox(width: 4.w),
                Text(
                  'Trần Tú Anh',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xFF555770),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(ImageAssets.personEdit),
                SizedBox(width: 4.w),
                Text(
                  'Hoàng Thu Hồng',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xFF555770),
                  ),
                ),
              ],
            ),
            _buildCalendar1('HT SỚM'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buttonNoApproved(), _buttonApproved()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar1(String? text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(ImageAssets.calendar),
            SizedBox(width: 4.w),
            Text('23/03/2023'),
            SizedBox(width: 8.w),
            Image.asset(ImageAssets.fileNewJob),
            SizedBox(width: 4.w),
            Text('0 files'),
          ],
        ),
        Container(
          width: 65.w,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFE3FFF1),
          ),
          child: Center(
            child: Text(
              text ?? '',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFF05A660),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _JobDone() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 275.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFF606170).withValues(alpha: 0.16),
            offset: Offset(0, 16),
            blurRadius: 24,
          ),
          BoxShadow(
            color: Color(0xFF28293D).withValues(alpha: 0.04),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(ImageAssets.addHome, width: 24.w, height: 24.h),
                    SizedBox(width: 4.w),
                    Text(
                      'CAO TỐC BẮC NAM',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8F90A6),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Image.asset(ImageAssets.flag, width: 24.w, height: 24.h),
                  ],
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(
                  width: 295.w,
                  height: 44.h,
                  child: Text(
                    'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1C1C28),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Image.asset(ImageAssets.personEdit),
                SizedBox(width: 4.w),

                Text(
                  'Trần Tú Anh',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xFF555770),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(ImageAssets.personTick),
                SizedBox(width: 4.w),
                Text(
                  'Hoàng Thu Hồng',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Color(0xFF555770),
                  ),
                ),
              ],
            ),
            _buildCalendar2('HT ĐÚNG HẠN'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buttonNoApproved(), _buttonApproved()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar2(String? text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(ImageAssets.calendar),
            SizedBox(width: 4.w),
            Text('23/03/2023'),
            SizedBox(width: 8.w),
            Image.asset(ImageAssets.fileNewJob),
            SizedBox(width: 4.w),
            Text('0 files'),
          ],
        ),
        Container(
          width: 101.w,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFFFF1E1),
          ),
          child: Center(
            child: Text(
              text ?? '',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFFE56E00),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonNoApproved() {
    return Container(
      width: 139.5.w,
      height: 34.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFC03A2C)),
      ),
      child: Center(
        child: Text(
          'Không duyệt',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Color(0XFFC03A2C),
          ),
        ),
      ),
    );
  }

  Widget _buttonApproved() {
    return Container(
      width: 139.5.w,
      height: 34.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFC03A2C),
      ),
      child: Center(
        child: Text(
          'Duyệt',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
