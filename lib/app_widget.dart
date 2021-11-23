import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black,
        backgroundColor: Colors.white,
        primaryColor: Colors.black,
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home/',
    ).modular();
  }
}
