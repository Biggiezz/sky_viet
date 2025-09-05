import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';

class DoingJob extends StatefulWidget {
  const DoingJob({super.key});

  @override
  State<DoingJob> createState() => _DoingJobState();
}

class _DoingJobState extends State<DoingJob> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            _buildJobDoing(),
            SizedBox(height: 12),
            _buildJobDoing(),
            SizedBox(height: 12),
            _buildJobDoing(),
            SizedBox(height: 12),
            _buildJobDoing(),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonDone() {
    return Row(
      children: [
        Container(
          width: 139.5,
          height: 34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xFFC03A2C)),
          ),
          child: Center(
            child: Text(
              'Hoàn thành CV',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color(0xFFC03A2C),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildJobDoing() {
    return Container(
      height: 275,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF606170).withValues(alpha: 0.16),
              spreadRadius: 0,
              blurRadius: 24,
              offset: Offset(0, 16),
            ), BoxShadow(
              color: Color(0xFF28293D).withValues(alpha: 0.04),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2),
            )
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageAssets.noteAdd),
                Text(
                  'CAO TỐC BẮC NAM',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF8F90A6),
                  ),
                ),
                const SizedBox(width: 120),
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(ImageAssets.flag,)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 60, 0),
            child: Text(
              'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1C1C28),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(ImageAssets.personEdit),

                    SizedBox(width: 4),
                    Text('Trần Tú Anh'),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Image.asset(ImageAssets.personEdit),
                    SizedBox(width: 4),
                    Text('Hoàng Thu Hồng'),
                  ],
                ),
                SizedBox(height: 12),

                _calendars(),
                SizedBox(height: 19.5),
                _buildButtonDone(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _calendars() => Row(
    children: [
      Image.asset(ImageAssets.calendar),
      SizedBox(width: 4),
      Text('23/03/2023'),
      SizedBox(width: 8),
      Image.asset(ImageAssets.fileNewJob),
      SizedBox(width: 4),
      Text('0 files'),
      SizedBox(width: 75),
      Container(
        width: 105,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color(0xFFFFE5E5),
        ),
        child: Center(
          child: Text(
            'KHÔNG DUYỆT',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFFE53535),
            ),
          ),
        ),
      ),
    ],
  );
}
