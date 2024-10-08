import 'package:flutter/material.dart';
import 'package:weatherly/core/utils/funtion.dart';
import 'package:weatherly/view/home_screen.dart';
import 'package:weatherly/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    bool isLoggedIn = await checkLoginStatus();
    setState(() {
      _isLoggedIn = isLoggedIn;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: _isLoggedIn ? const HomeScreen() : const SplashScreen(),
    );
  }
}
