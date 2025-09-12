import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClosedJob extends StatefulWidget {
  const ClosedJob({super.key});

  @override
  State<ClosedJob> createState() => _ClosedJobState();
}

class _ClosedJobState extends State<ClosedJob> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          _buildCloseJob(),
          _buildJobDontDone(),

          _buildCloseJob(),
          _buildJobDontDone(),
        ],
      ),
    );
  }

  Widget _buildCloseJob() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 225.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF606170).withValues(alpha: 0.16),
              spreadRadius: 0,
              blurRadius: 24,
              offset: Offset(0, 16),
            ),
            BoxShadow(
              color: Color(0xFF28293D).withValues(alpha: 0.04),
              spreadRadius: 0,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 24.w,
                            height: 24.h,
                            child: Image.asset(ImageAssets.addHome),
                          ),
                        ],
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'CAO TỐC BẮC NAM',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8F90A6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 4),

                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset(ImageAssets.flag),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 295.w,
                    height: 44.h,

                    child: Text(
                      'Chở phòng thí nghiệm đi lấy mẫu tại Km189',
                      style: TextStyle(
                        fontSize: 16,
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
                  Text('Trần Tú Anh'),
                ],
              ),
              Row(
                children: [
                  Image.asset(ImageAssets.personTick),
                  SizedBox(width: 4.w),
                  Text('Hoàng Thu Hồng'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [_buildCalendar()],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return Row(
      children: [
        Image.asset(ImageAssets.calendar),
        SizedBox(
          width: 171.w,
          height: 17.h,
          child: Row(
            children: [
              SizedBox(width: 4.w),
              Text('23/03/2023'),
              SizedBox(width: 8.w),
              Image.asset(ImageAssets.fileNewJob),
              SizedBox(width: 4.w),
              Text('0 files'),
            ],
          ),
        ),

        SizedBox(width: 40.w),
        Container(
          width: 78.w,
          height: 24.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFE3FFF1),
          ),

          child: Center(
            child: Text(
              'ĐÃ DUYỆT',
              style: TextStyle(
                fontSize: 12.w,
                fontWeight: FontWeight.w600,
                color: Color(0xFF05A660),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildJobDontDone() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 275.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF606170).withValues(alpha: 0.16),
              spreadRadius: 0,
              blurRadius: 24,
              offset: Offset(0, 16),
            ),
            BoxShadow(
              color: Color(0xFF28293D).withValues(alpha: 0.04),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: Image.asset(ImageAssets.addHome),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        'CAO TỐC BẮC NAM',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF8F90A6),
                        ),
                      ),
                    ],
                  ),



                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset(ImageAssets.flag),
                  ),
                ],
              ),
              SizedBox(height: 12.w),
              Row(
                children: [
                  SizedBox(
                    width: 295.w,
                    height: 44.h,

                    child: Text(
                      'Chở phòng thí nghiệm đi lấy mẫu tại Km189',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1C1C28),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Image.asset(ImageAssets.personEdit),
                  SizedBox(width: 4.w),
                  Text('Trần Tú Anh'),
                ],
              ),
              SizedBox(height: 12.sp),
              Row(
                children: [
                  Image.asset(ImageAssets.personTick),
                  SizedBox(width: 4.w),
                  Text('Hoàng Thu Hồng'),
                ],
              ),
              SizedBox(height: 12.h),
              _buildCalendarDontDone(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarDontDone() {
    return Row(
      children: [
        Image.asset(ImageAssets.calendar),
        SizedBox(width: 4.w),
        Text('23/03/2023'),
        SizedBox(width: 8.w),
        Image.asset(ImageAssets.fileNewJob),
        SizedBox(width: 4.w),
        Text('0 files'),
        SizedBox(width: 70.w),
        Container(
          width: 97,
          height: 24.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFFFF1E1),
          ),

          child: Center(
            child: Text(
              'CHƯA DUYỆT',
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
}
