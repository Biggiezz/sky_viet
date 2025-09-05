import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';

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
          _buildCloseJob(),
          _buildJobDontDone(),
          _buildJobDontDone(),
          _buildCloseJob(),
        ],
      ),
    );
  }

  Widget _buildCloseJob() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  SizedBox(child: Image.asset(ImageAssets.noteAdd)),

                  Text(
                    'CAO TỐC BẮC NAM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8F90A6),
                    ),
                  ),

                  SizedBox(width: 130),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(ImageAssets.flag),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 295,
                    height: 44,

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
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(ImageAssets.personEdit),
                  Text('Trần Tú Anh'),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset(ImageAssets.personTick),
                  Text('Hoàng Thu Hồng'),
                ],
              ),
              SizedBox(height: 12),
              _buildCalendar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(ImageAssets.calendar),
        SizedBox(width: 4),
        Text('23/03/2023'),
        SizedBox(width: 8),
        Image.asset(ImageAssets.fileNewJob),
        SizedBox(width: 4),
        Text('0 files'),
        SizedBox(width: 90),
        Container(
          width: 78,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFE3FFF1),
          ),

          child: Center(
            child: Text(
              'ĐÃ DUYỆT',
              style: TextStyle(
                fontSize: 12,
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
        height: 275,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  SizedBox(
                    child: Icon(Icons.add_card, color: Color(0xFF8F90A6)),
                  ),

                  Text(
                    'CAO TỐC BẮC NAM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF8F90A6),
                    ),
                  ),

                  SizedBox(width: 130),
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(ImageAssets.flag),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  SizedBox(
                    width: 295,
                    height: 44,

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
              SizedBox(height: 16),
              Row(
                children: [
                  Image.asset(ImageAssets.personEdit),
                  Text('Trần Tú Anh'),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset(ImageAssets.personTick),
                  Text('Hoàng Thu Hồng'),
                ],
              ),
              SizedBox(height: 12),
              _buildCalendarDontDone(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalendarDontDone() {
    return Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(ImageAssets.calendar),
        SizedBox(width: 4),
        Text('23/03/2023'),
        SizedBox(width: 8),
        Image.asset(ImageAssets.fileNewJob),
        SizedBox(width: 4),
        Text('0 files'),
        SizedBox(width: 70),
        Container(
          width: 97,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFFFF1E1),
          ),

          child: Center(
            child: Text(
              'CHƯA DUYỆT',
              style: TextStyle(
                fontSize: 12,
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
