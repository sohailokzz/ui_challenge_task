import 'package:flutter/material.dart';
import 'package:remote_task/views/splash_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Neural Trainer',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
