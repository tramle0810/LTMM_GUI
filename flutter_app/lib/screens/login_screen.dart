import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'register_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ============================================================
  // CONTROLLERS
  // ============================================================

  final TextEditingController usernameController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  bool obscurePassword = true;

  // ============================================================
  // COLOR PALETTE
  // ============================================================

  static const Color deepNavy = Color(0xFF1B263B);
  static const Color steelBlue = Color(0xFF3D5A80);
  static const Color airyBlue = Color(0xFF98B4C7);
  static const Color paleBlue = Color(0xFFD8E6F2);
  static const Color iceBlue = Color(0xFFEAF2F8);

  static const Color textDark = Color(0xFF1B263B);
  static const Color textGrey = Color(0xFF627D98);

  // ============================================================
  // DISPOSE
  // ============================================================

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // ============================================================
  // LOGIN
  // ============================================================

  void _login() {
    final username = usernameController.text.trim();
    final password = passwordController.text;

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Vui lòng nhập đầy đủ thông tin',
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.w500,
            ),
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: deepNavy,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Đang xử lý đăng nhập...',
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.w500,
          ),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: deepNavy,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: iceBlue,
      resizeToAvoidBottomInset: true,

      body: Stack(
        children: [
          // ======================================================
          // BACKGROUND GRADIENT
          // ======================================================

          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  iceBlue,
                  paleBlue,
                  airyBlue,
                ],
                stops: [
                  0.0,
                  0.48,
                  1.0,
                ],
              ),
            ),
          ),

          // ======================================================
          // TOP SOFT CIRCLE
          // ======================================================

          Positioned(
            top: -110,
            right: -90,
            child: _backgroundCircle(
              size: 280,
              color: Colors.white.withOpacity(0.22),
            ),
          ),

          // ======================================================
          // BOTTOM SOFT CIRCLE
          // ======================================================

          Positioned(
            bottom: -150,
            left: -120,
            child: _backgroundCircle(
              size: 330,
              color: steelBlue.withOpacity(0.10),
            ),
          ),

          // ======================================================
          // SMALL DECORATION
          // ======================================================

          Positioned(
            top: size.height * 0.23,
            left: -35,
            child: _backgroundCircle(
              size: 90,
              color: Colors.white.withOpacity(0.16),
            ),
          ),

          // ======================================================
          // MAIN CONTENT
          // ======================================================

          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),

              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: size.height -
                      MediaQuery.of(context).padding.top -
                      MediaQuery.of(context).padding.bottom,
                ),

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    24,
                    24,
                    24,
                    28,
                  ),

                  child: Column(
                    children: [
                      const SizedBox(height: 8),

                      // ==================================================
                      // LOGO
                      // ==================================================

                
                      const SizedBox(height: 17),

                      // ==================================================
                      // APP NAME
                      // ==================================================

                      Text(
                        'E-WALLET',
                        style: GoogleFonts.dmSans(
                          fontSize: 27,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2.2,
                          color: deepNavy,
                        ),
                      ),

                      const SizedBox(height: 28),

                      // ==================================================
                      // LOGIN CARD
                      // ==================================================

                      _buildLoginCard(),

                      const SizedBox(height: 22),

                      // ==================================================
                      // SECURITY TEXT
                      // ==================================================

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.verified_user_outlined,
                            size: 15,
                            color: steelBlue,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LOGIN CARD
  // ============================================================

  Widget _buildLoginCard() {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.fromLTRB(
        23,
        25,
        23,
        22,
      ),

      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.96),

        borderRadius: BorderRadius.circular(30),

        border: Border.all(
          color: Colors.white.withOpacity(0.75),
          width: 1,
        ),

        boxShadow: [
          BoxShadow(
            color: deepNavy.withOpacity(0.10),
            blurRadius: 30,
            spreadRadius: 1,
            offset: const Offset(0, 15),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ========================================================
          // TITLE
          // ========================================================

          Text(
            'Xin chào',
            style: GoogleFonts.dmSans(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: textDark,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            'Đăng nhập để quản lý ví của bạn',
            style: GoogleFonts.dmSans(
              fontSize: 13.5,
              fontWeight: FontWeight.w400,
              color: textGrey,
            ),
          ),

          const SizedBox(height: 27),

          // ========================================================
          // USERNAME LABEL
          // ========================================================

          _buildLabel(
            'Số tài khoản',
            Icons.person_outline_rounded,
          ),

          const SizedBox(height: 9),

          // ========================================================
          // USERNAME FIELD
          // ========================================================

          _buildTextField(
            controller: usernameController,
            hint: 'Nhập số tài khoản',
            icon: Icons.person_outline_rounded,
          ),

          const SizedBox(height: 19),

          // ========================================================
          // PASSWORD LABEL
          // ========================================================

          _buildLabel(
            'Mật khẩu',
            Icons.lock_outline_rounded,
          ),

          const SizedBox(height: 9),

          // ========================================================
          // PASSWORD FIELD
          // ========================================================

          _buildTextField(
            controller: passwordController,
            hint: 'Nhật mật khẩu',
            icon: Icons.lock_outline_rounded,
            obscureText: obscurePassword,

            suffix: IconButton(
              splashRadius: 22,

              onPressed: () {
                setState(() {
                  obscurePassword =
                      !obscurePassword;
                });
              },

              icon: Icon(
                obscurePassword
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,

                size: 21,
                color: textGrey,
              ),
            ),
          ),

          const SizedBox(height: 8),

          // ========================================================
          // LOGIN BUTTON
          // ========================================================

          _buildLoginButton(),

          const SizedBox(height: 24),

          // ========================================================
          // OR DIVIDER
          // ========================================================

          Row(
            children: [
              Expanded(
                child: Container(
                  height: 1,
                  color: const Color(0xFFE7EDF2),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),

                child: Text(
                  'Hoặc',
                  style: GoogleFonts.dmSans(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: textGrey,
                    letterSpacing: 1,
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  height: 1,
                  color: const Color(0xFFE7EDF2),
                ),
              ),
            ],
          ),

          const SizedBox(height: 18),

          // ========================================================
          // REGISTER
          // ========================================================

          Center(
            child: Text(
              "Bạn chưa có tài khoản?",
              style: GoogleFonts.dmSans(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: textGrey,
              ),
            ),
          ),

          const SizedBox(height: 2),

          Center(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const RegisterScreen(),
                  ),
                );
              },

              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                ),
              ),

              child: Text(
                'Đăng ký tài khoản',
                style: GoogleFonts.dmSans(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: deepNavy,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // LABEL
  // ============================================================

  Widget _buildLabel(
    String text,
    IconData icon,
  ) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: steelBlue,
        ),

        const SizedBox(width: 6),

        Text(
          text,
          style: GoogleFonts.dmSans(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: textDark,
          ),
        ),
      ],
    );
  }

  // ============================================================
  // TEXT FIELD
  // ============================================================

  Widget _buildTextField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
    bool obscureText = false,
    Widget? suffix,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,

      style: GoogleFonts.dmSans(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textDark,
      ),

      cursorColor: steelBlue,

      decoration: InputDecoration(
        hintText: hint,

        hintStyle: GoogleFonts.dmSans(
          fontSize: 13.5,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF9AA9B7),
        ),

        prefixIcon: Icon(
          icon,
          size: 20,
          color: steelBlue,
        ),

        suffixIcon: suffix,

        filled: true,
        fillColor: const Color(0xFFF8FAFC),

        contentPadding:
            const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 17,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: const BorderSide(
            color: Color(0xFFE5EBF0),
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: const BorderSide(
            color: Color(0xFFE5EBF0),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(17),
          borderSide: const BorderSide(
            color: steelBlue,
            width: 1.4,
          ),
        ),
      ),
    );
  }

  // ============================================================
  // LOGIN BUTTON
  // ============================================================

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 58,

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            deepNavy,
            steelBlue,
          ],
        ),

        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: deepNavy.withOpacity(0.23),
            blurRadius: 17,
            offset: const Offset(0, 8),
          ),
        ],
      ),

      child: Material(
        color: Colors.transparent,

        child: InkWell(
          borderRadius: BorderRadius.circular(18),

          onTap: _login,

          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
            ),

            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: [
                Text(
                  'Sign in',
                  style: GoogleFonts.dmSans(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(width: 12),

                Container(
                  width: 31,
                  height: 31,

                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.16),
                    shape: BoxShape.circle,
                  ),

                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // BACKGROUND CIRCLE
  // ============================================================

  Widget _backgroundCircle({
    required double size,
    required Color color,
  }) {
    return Container(
      width: size,
      height: size,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
