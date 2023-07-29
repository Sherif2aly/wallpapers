import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpapers/page/fav_page.dart';
import 'package:wallpapers/page/home_page.dart';
import 'package:wallpapers/page/image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "imagePage": (context) => const ImagePage(),
        "favPage": (context) => const FavPage(),
      },
    );
  }
}
