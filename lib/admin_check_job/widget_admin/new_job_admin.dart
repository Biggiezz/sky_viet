import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewJobAdmin extends StatefulWidget {
  const NewJobAdmin({super.key});

  @override
  State<NewJobAdmin> createState() => _NewJobAdminState();
}

class _NewJobAdminState extends State<NewJobAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildContainerJobDoneEarly(),
              SizedBox(height: 12.h),
              _buildJobDone(),
              SizedBox(height: 12.h),
              _buildContainerJobDoneEarly(),
              SizedBox(height: 12.h),
              _buildJobDone(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainerJobDoneEarly() {
    return Container(
      height: 275.h,
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            offset: Offset(0, 16),
            color: Color(0xFF606170).withValues(alpha: 0.16),
          ),
          BoxShadow(
            blurRadius: 8,
            offset: Offset(0, 2),
            color: Color(0xFF28293D).withValues(alpha: 0.04),
          ),
        ],
      ),
      child: _buildJobDoneEarly(),
    );
  }

  Widget _buildCalendar(String? text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 171.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Image.asset(ImageAssets.calendar),
              Text('23/03/2023'),
              Image.asset(ImageAssets.fileNewJob),
              Text('0 files'),
            ],
          ),
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
                color: Color(0xff05A663),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildJobDone() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 275.h,
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16),

        boxShadow: [
          BoxShadow(
            blurRadius: 24,
            offset: Offset(0, 16),
            color: Color(0xFF606170).withValues(alpha: 0.16),
          ),
          BoxShadow(
            blurRadius: 8,
            offset: Offset(0, 2),
            color: Color(0xFF28293D).withValues(alpha: 0.04),
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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

                Spacer(),
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
                    'Chở phòng thí nghiệm đi lấy mẫu tại KM 189',
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
                Text('Trần Tú Anh'),
              ],
            ),
            Row(
              children: [
                Image.asset(ImageAssets.personTick),
                SizedBox(width: 4.w),
                Text('Hoàng Thu Hồng'),
              ],
            ),
            _buildStatusDone('HT ĐÚNG HẠN'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_buttonNoApproved(), _buttonApproved()],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusDone(String? text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 24.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Image.asset(ImageAssets.calendar),
              SizedBox(width: 4.w),
              Text('23/03/2023'),
              SizedBox(width: 8.w),
              Image.asset(ImageAssets.fileNewJob),
              SizedBox(width: 8.w),
              Text('0 files'),
            ],
          ),
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
                color: Color(0xffE56E00),
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
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: Color(0xFFC03A2C),
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
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildJobDoneEarly() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Spacer(),

              Image.asset(ImageAssets.flag, width: 24.w, height: 24.h),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 295.w,
                height: 44.h,

                child: Text(
                  'Chở phòng thí nghiệm đi lấy mẫu tại KM 189',
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
              Text('Trần Tú Anh'),
            ],
          ),
          Row(
            children: [
              Image.asset(ImageAssets.personTick),
              SizedBox(width: 4.w),
              Text('Hoàng Thu Hồng'),
            ],
          ),
          _buildCalendar('HT SỚM'),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buttonNoApproved(), _buttonApproved()],
          ),
        ],
      ),
    );
  }
}
