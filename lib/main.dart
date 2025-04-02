import 'package:chat_test/config/theme/app_theme.dart';
import 'package:chat_test/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectColor: 1).theme(),
      home: ChatScreen(),
    );
  }
}