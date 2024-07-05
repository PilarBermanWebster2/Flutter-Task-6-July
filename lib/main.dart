import 'package:flutter/material.dart';
import 'listview/list_example.dart';
import 'screens/about-screen.dart';
import 'screens/home-screen.dart';
import 'screens/destination.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/wisata': (context) => ListWisataScreen()
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: HomeScreen(),
        ),
      ),
    );
  }
}
