import 'package:chat/admin_check_job/home_job_admin.dart';
import 'package:chat/assets/image.dart';
import 'package:chat/home_job/home_job.dart';
import 'package:chat/home_login/home_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomeChat extends StatefulWidget {
  const HomeChat({super.key});

  @override
  State<HomeChat> createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> {
  final _formKey = GlobalKey<FormState>();
  final FocusNode _emailFocus = FocusNode();

  final TextEditingController _emailController = TextEditingController();
  final Emailregex = RegExp(r'^[\w-\.-]{2,}@([\w-]+\.)+[a-zA-Z]{2,6}$');

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 160.h,
                  child: Image.asset(ImageAssets.logoHome),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(ImageAssets.logo),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Đăng Nhập',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1C28),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  _buildTextField(),
                  SizedBox(height: 173.h),
                  _buildButtonSign(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField() {
    return TextFormField(
      controller: _emailController,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      focusNode: _emailFocus,

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Vui lòng nhập tài khoản';
        }
        if (!Emailregex.hasMatch(value)) {
          return "Email không đúng định dạng";
        }
        return null;
      },

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFC7C9D9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFC7C9D9)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFC7C9D9), width: 1.5),
        ),

        label: Text(
          'Tên tài khoản/Email',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xFF8F90A6),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonSign() {
    return GestureDetector(
      onTap: () {
        if (Emailregex.hasMatch(_emailController.text)) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeLogin()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Email không đúng định dạng ')),
          );
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          color: Color(0xFFC03A2C),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Tiếp tục',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
