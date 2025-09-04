import 'package:chat/assets/image.dart';
import 'package:flutter/material.dart';

class NewJob extends StatefulWidget {
  const NewJob({super.key});

  @override
  State<NewJob> createState() => _NewJobState();
}

class _NewJobState extends State<NewJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
         // height: 275,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 19),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add_card),

                    Text(
                      'CAO TỐC BẮC NAM',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8F90A6),
                      ),
                    ),
                    SizedBox(width: 8),
                    Image.asset(ImageAssets.flag),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                child: SizedBox(
                  width: 295,
                  height: 44,
                  child: Text(
                    'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1C1C28),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset(ImageAssets.personEdit),
                          SizedBox(width: 4),
                          Text(
                            'Nguyễn Hoàng Anh Thư',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF555770),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(ImageAssets.personTick),
                        SizedBox(width: 4),
                        Text(
                          'Hoàng Thu Hồng',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF555770),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    _calenDars(),

                    _buttonDoneJob(),
                  ],
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }

  Widget _calenDars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(ImageAssets.calendar),
        SizedBox(width: 4),
        Text(
          '23/03/2023',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF555770),
          ),
        ),
        SizedBox(width: 8),
        Image.asset(ImageAssets.fileNewJob),
        Text(
          '0 files',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF555770),
          ),
        ),
        SizedBox(width: 110),
        Container(
          width: 68,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xFFE4E4EB),
          ),
          child: Center(
            child: Text(
              'MỚI TẠO',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF28293D),
              ),
            ),
          ),
        ),

      ],
    );
  }
  Widget _buttonDoneJob(){
    return Container(
      width: 139,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Color(0xFFC03A2C)),
      ),
      child: Center(child: Text('Hoàn thành CV',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFFc03A2C),
        ),)),

    );
  }
}
