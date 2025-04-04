import 'package:chat_test/config/theme/app_theme.dart';
import 'package:chat_test/presentation/providers/chat_provider.dart';
import 'package:chat_test/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 1).theme(),
        home: ChatScreen(),
      ),
    );
  }
}