import 'package:flutter/material.dart';
import 'package:playstoreui/Appstore.dart';
import 'package:playstoreui/Playstore.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => click(),
      ),
      ChangeNotifierProvider(
        create: (context) => count(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Playstore(),
    );
  }
}
