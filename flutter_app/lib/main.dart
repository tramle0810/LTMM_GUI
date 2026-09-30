import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const EWalletApp());
}

class EWalletApp extends StatelessWidget {
  const EWalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'E-Wallet',

      theme: AppTheme.lightTheme,

      home: const LoginScreen(),
    );
  }
}
