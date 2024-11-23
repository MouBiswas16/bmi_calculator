// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calculator/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/color_constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.black,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: resultScreenAppbarColor,
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (BuildContext context, CalculatorProvider provider,
                  Widget? child) {
                return SizedBox(
                  height: 300,
                  width: 300,
                  child: Card(
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        provider.result.toString(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
