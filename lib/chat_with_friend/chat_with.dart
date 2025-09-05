import 'package:chat/assets/image.dart';
import 'package:chat/home_login/home_login.dart';
import 'package:flutter/material.dart';

class HomeChat extends StatefulWidget {
  const HomeChat({super.key});

  @override
  State<HomeChat> createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final regex = RegExp(r'^[\w-\.-]{2,}@([\w-]+\.)+[a-zA-Z]{2,6}$');

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: Image.asset(ImageAssets.logoHome),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(ImageAssets.logo),
              ),
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Đăng Nhập',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1C1C28),
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTextField(),
                  SizedBox(height: 173),
                  _buildButtonSign(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFC7C9D9)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: TextFormField(
        controller: _emailController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Vui lòng nhập tài khoản';
          }
          if (!regex.hasMatch(value)) {
            return "Email không hợp lệ";
          }
          return null;
        },

        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(
            'Tên tài khoản/Email',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xFF8F90A6),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonSign() {
    return GestureDetector(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(content: Text('Tiếp tục nhập vào mật khẩu')),
          //
          // );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeLogin()),
          );
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFC03A2C),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            'Tiếp tục',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
