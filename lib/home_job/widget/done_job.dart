import 'package:flutter/material.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [],
            ),
            _buildDoneJob(),
            SizedBox(height: 12),
            _buildDoneJob(),
            SizedBox(height: 12),
            _buildDoneJob(),
          ],
        ),
      ),
    );
  }

  Widget _buildDoneJob() {
    return Container(
      width: MediaQuery.of(context).size.width,

      height: 225,
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
              children: [
                Image.asset(ImageAssets.noteAdd),
                SizedBox(width: 8),
                Text('CAO TỐC BẮC NAM'),
                SizedBox(width: 150),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(ImageAssets.flag),
                ),
              ],
            ),
SizedBox(height: 19),
            Row(
              children: [
                SizedBox(
                  height: 44,
                  width: 295,
                  child: Text(
                    'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1C1C28),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Image.asset(ImageAssets.personEdit),
                Text(
                  'Trần Tú Anh',
                  style: TextStyle(
                    color: Color(0xFF555770),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),
            Row(
              children: [
                Image.asset(ImageAssets.personTick),
                Text(
                  'Hoàng Thu Hồng',
                  style: TextStyle(
                    color: Color(0xFF555770),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),
            _buildCalendar(),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return SizedBox(
      child: Row(
        children: [
          Image.asset(ImageAssets.calendar),
          SizedBox(width: 4),
          Text('23/03/2023'),
          SizedBox(width: 8),
          Image.asset(ImageAssets.fileNewJob),
          Text('0 files'),
          SizedBox(width: 100),
          Container(
            width: 65,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xFFE3FFF1),
            ),
            child: Center(
              child: Text(
                'HT SỚM',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF05A660),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
