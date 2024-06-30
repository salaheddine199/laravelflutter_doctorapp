import 'package:flutter/material.dart';
import 'package:flutter_laravel_youtube/main_layout.dart';
import 'package:flutter_laravel_youtube/screens/auth_page.dart';
import 'package:flutter_laravel_youtube/utils/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'FlutterLaravel Doctor App',
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      routes: {
        '/': (context) => const AuthPage(),
        // main layout after login:
        'main': (context) => const MainLayout(),
      },
      initialRoute: '/',
    );
  }
}
