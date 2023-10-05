import 'package:aaaaaa/core/theme/app_theme.dart';
import 'package:aaaaaa/layout/home_layout.dart';
import 'package:aaaaaa/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightheme,
        darkTheme: AppTheme.darktheme,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (_) => SplashScreen(),
          HomeLayout.routeName: (_) => HomeLayout()
        });
  }
}
