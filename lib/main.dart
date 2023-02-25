import 'package:flutter/material.dart';
import 'package:yes_or_no_app/config/theme/app_theme.dart';
import 'package:yes_or_no_app/presentation/screens/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(), 
      
      home: const ChatScreen()
    );
  }
}
 