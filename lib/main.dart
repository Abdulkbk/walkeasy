import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walkeasy/screen/home_screen.dart';
import 'package:walkeasy/screen/login_screen.dart';
import 'package:walkeasy/screen/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Walk Easy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/onboard',
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/onboard', page: () => const OnboardScreen()),
        GetPage(name: '/login', page: () => const LoginScreen())
      ],
    );
  }
}

