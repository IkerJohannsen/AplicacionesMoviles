import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tipcalculator/home_page.dart';
import 'package:tipcalculator/providers/tip_time_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
        title: 'Material App',
        home: ChangeNotifierProvider(
            create: (context) => TipTimeProvider(), child: HomePage()));
  }
}
