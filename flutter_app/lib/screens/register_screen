import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() =>
      _RegisterScreenState();
}

class _RegisterScreenState
    extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirm = true;

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  InputDecoration input({
    required String hint,
    required IconData icon,
    Widget? suffix,
  }) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(
        icon,
        color: AppColors.textLight,
      ),
      suffixIcon: suffix,
    );
  }

  void register() {
    if (nameController.text.trim().isEmpty ||
        usernameController.text.trim().isEmpty ||
        passwordController.text.isEmpty ||
        confirmController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Vui lòng nhập đầy đủ thông tin',
          ),
        ),
      );
      return;
    }

    if (passwordController.text !=
        confirmController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Mật khẩu xác nhận không khớp',
          ),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Tạo tài khoản thành công',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              24,
              20,
              24,
              30,
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                // BACK
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.border,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () =>
                        Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  'Create',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                ),

                Text(
                  'your account',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w800,
                      ),
                ),

                const SizedBox(height: 8),

                Text(
                  'Set up your digital wallet in a few simple steps.',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium,
                ),

                const SizedBox(height: 28),

                // STEP INDICATOR
                Row(
                  children: [
                    _step(
                      number: '01',
                      active: true,
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: AppColors.blueLight,
                      ),
                    ),
                    _step(
                      number: '02',
                      active: false,
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: AppColors.blueLight,
                      ),
                    ),
                    _step(
                      number: '03',
                      active: false,
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(.05),
                        blurRadius: 25,
                        offset:
                            const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      _label(context, 'Full name'),
                      const SizedBox(height: 8),

                      TextField(
                        controller: nameController,
                        decoration: input(
                          hint: 'Your full name',
                          icon:
                              Icons.person_outline_rounded,
                        ),
                      ),

                      const SizedBox(height: 18),

                      _label(context, 'Username'),
                      const SizedBox(height: 8),

                      TextField(
                        controller:
                            usernameController,
                        decoration: input(
                          hint: 'Choose a username',
                          icon:
                              Icons.alternate_email_rounded,
                        ),
                      ),

                      const SizedBox(height: 18),

                      _label(context, 'Password'),
                      const SizedBox(height: 8),

                      TextField(
                        controller:
                            passwordController,
                        obscureText:
                            obscurePassword,
                        decoration: input(
                          hint: 'Create a password',
                          icon:
                              Icons.lock_outline_rounded,
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                obscurePassword =
                                    !obscurePassword;
                              });
                            },
                            icon: Icon(
                              obscurePassword
                                  ? Icons
                                      .visibility_off_outlined
                                  : Icons
                                      .visibility_outlined,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 18),

                      _label(
                        context,
                        'Confirm password',
                      ),

                      const SizedBox(height: 8),

                      TextField(
                        controller:
                            confirmController,
                        obscureText:
                            obscureConfirm,
                        decoration: input(
                          hint: 'Repeat your password',
                          icon:
                              Icons.lock_outline_rounded,
                          suffix: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureConfirm =
                                    !obscureConfirm;
                              });
                            },
                            icon: Icon(
                              obscureConfirm
                                  ? Icons
                                      .visibility_off_outlined
                                  : Icons
                                      .visibility_outlined,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          AppColors.navy,
                      foregroundColor:
                          Colors.white,
                      elevation: 0,
                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Text(
                          'Create wallet',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                color: Colors.white,
                                fontWeight:
                                    FontWeight.w700,
                              ),
                        ),
                        const SizedBox(width: 12),
                        const Icon(
                          Icons.arrow_forward_rounded,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 22),

                Center(
                  child: TextButton(
                    onPressed: () =>
                        Navigator.pop(context),
                    child: const Text(
                      'Already have an account? Sign in',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _label(
    BuildContext context,
    String text,
  ) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(
            fontWeight: FontWeight.w600,
          ),
    );
  }

  Widget _step({
    required String number,
    required bool active,
  }) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: active
            ? AppColors.navy
            : AppColors.blueLight,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        number,
        style: TextStyle(
          color: active
              ? Colors.white
              : AppColors.blue,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
