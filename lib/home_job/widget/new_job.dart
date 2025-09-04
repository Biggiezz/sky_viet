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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildJobEntry(),
              SizedBox(height: 12),
              _buildJobEntry(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobEntry() {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amberAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.add_card),
                const Text(
                  'CAO TỐC BẮC NAM',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF8F90A6),
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset('assets/images/flag.png'), // Ensure asset is defined
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Chở phòng thí nghiệm đi lấy mẫu tại Km 189',
                style: const TextStyle(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/person_edit.png',
                    ), // Ensure asset is defined
                    const SizedBox(width: 4),
                    const Text(
                      'Nguyễn Hoàng Anh Thư',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF555770),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/person_tick.png',
                    ), // Ensure asset is defined
                    const SizedBox(width: 4),
                    const Text(
                      'Hoàng Thu Hồng',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF555770),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _calenDars(),
                const SizedBox(height: 16),
                _buttonDoneJob(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _calenDars() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/calendar.png'), // Ensure asset is defined
        const SizedBox(width: 4),
        const Text(
          '23/03/2023',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF555770),
          ),
        ),
        const SizedBox(width: 8),
        Image.asset(ImageAssets.fileNewJob),
        const Text(
          '0 files',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF555770),
          ),
        ),
        const Spacer(),
        Container(
          width: 68,
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: const Color(0xFFE4E4EB),
          ),
          child: const Center(
            child: Text(
              'MỚI TẠO',
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

  Widget _buttonDoneJob() {
    return Container(
      width: 139,
      height: 34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFC03A2C)),
      ),
      child: const Center(
        child: Text(
          'Hoàn thành CV',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xFFC03A2C),
          ),
        ),
      ),
    );
  }
}
