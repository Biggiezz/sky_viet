import 'package:chat/assets/image.dart';
import 'package:chat/home_job/home_job.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart' show AuthenticationOptions, LocalAuthentication;

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isObscured = true;
  bool isChecked = false;
  final LocalAuthentication auth = LocalAuthentication();

  @override
  void initState() {
    super.initState();
    _isObscured = true;
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Hàm kiểm tra và xác thực Face ID
  Future<bool> _authenticateWithFaceID() async {
    try {
      bool canCheckBiometrics = await auth.canCheckBiometrics;
      if (!canCheckBiometrics) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Thiết bị không hỗ trợ Face ID')),
        );
        return false;
      }

      bool isBiometricAvailable = await auth.isDeviceSupported();
      if (!isBiometricAvailable) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Face ID chưa được thiết lập trên thiết bị'),
          ),
        );
        return false;
      }

      bool authenticated = await auth.authenticate(
        localizedReason: 'Vui lòng xác thực bằng Face ID để đăng nhập',
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );

      return authenticated;
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Lỗi Face ID: $e')));
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: Image.asset(ImageAssets.logoSky),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(ImageAssets.logoHome),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(ImageAssets.homeLogin),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chào buổi sáng,',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF28293D),
                          ),
                        ),
                        Text(
                          'ĐẶNG HOÀNG ANH',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF28293D),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 71),
                _buildTextFieldPassWord(),
                _buildText(),
                SizedBox(height: 69),
                _buildButtonSign(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextFieldPassWord() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      padding: EdgeInsets.fromLTRB(0, 8, 0,0), // Cân đối padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFC7C9D9)),
      ),
      child: TextField(
        controller: _passwordController,
        focusNode: _passwordFocus,
        obscureText: _isObscured,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'At least 8 characters',
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF28293D),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal:16),
          label: Text(
            'Mật khẩu',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF8F90A6),
            ),
          ),
          suffixIcon: IconButton(

            icon: Icon(
              _isObscured ? Icons.visibility : Icons.visibility_off,
              color: Color(0xFFC03A2C),
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tài khoản khác',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFFC03A2C),
            ),
          ),
          Text(
            'Quên mật khẩu?',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFFC03A2C),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonSign() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Nút Đăng nhập
        Expanded(
          child: GestureDetector(
            onTap: () {
              try {
                if (_passwordController.text.isNotEmpty &&
                    _passwordController.text.length >= 8) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Đăng nhập thành công')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Mật khẩu phải có ít nhất 8 ký tự'),
                    ),
                  );
                }
              } catch (e) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Lỗi: $e')));
              }
            },
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeJob()));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xFFC03A2C),
                ),
                child: const Center(
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12), // Khoảng cách giữa nút Đăng nhập và Face ID
        // Nút Face ID
        GestureDetector(
          onTap: () async {
            bool authenticated = await _authenticateWithFaceID();
            if (authenticated) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Xác thực Face ID thành công')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Xác thực Face ID thất bại')),
              );
            }
          },
          child: Icon(
            Icons.fingerprint,
            color: const Color(0xFFC03A2C),
            size: 35
          ),
        ),
      ],
    );
  }
}
