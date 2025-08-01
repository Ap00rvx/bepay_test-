import 'package:bp_ui/features/home/presentation/pages/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BP UI',
      theme: AppTheme.lightTheme,

      home: const WalletScreen(),
    );
  }
}
