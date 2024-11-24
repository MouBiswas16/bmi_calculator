// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/provider/calculator_provider.dart';
import 'package:bmi_calculator/screens/home_screen.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (contex) => CalculatorProvider()),
      ],
      child: MaterialApp(
        title: 'BMI Calculator',
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => HomeScreen(),
          "/result": (context) => ResultScreen(),
        },
      ),
    );
  }
}
