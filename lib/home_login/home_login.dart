import 'package:chat/assets/image.dart';
import 'package:chat/home_job/home_job.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart'
    show AuthenticationOptions, LocalAuthentication;

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
  final passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Image.asset(ImageAssets.homeLogin, scale: 2),
                    ),
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
    return TextFormField(
      controller: _passwordController,
      focusNode: _passwordFocus,
      obscureText: _isObscured,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value == null || value.isEmpty) return 'Vui lòng nhập mật khẩu';
        if (!passwordRegex.hasMatch(value)) {
          return 'Mật khẩu phải ≥8 ký tự, có chữ hoa, chữ thường, số và ký tự đặc biệt';
        }
        return null;
      },
      style: const TextStyle(fontSize: 16, height: 1.4),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFAFAFA),

        labelText: 'Mật khẩu',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: 'At least 8 characters',

        isDense: true,
        contentPadding: const EdgeInsets.fromLTRB(16, 24, 48, 14),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFC7C9D9)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFC7C9D9)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFC7C9D9)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFC03A2C), width: 1.5),
        ),

        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFFC03A2C),
          ),
          onPressed: () => setState(() => _isObscured = !_isObscured),
        ),
      ),
      keyboardType: TextInputType.visiblePassword,
      textInputAction: TextInputAction.done,
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeJob()),
                );
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
        const SizedBox(width: 12),
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
          child: Image.asset(ImageAssets.faceIdLogin, scale: 2),
        ),
      ],
    );
  }
}
