// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final dynamic data;
  const ResultScreen({super.key, this.data});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  Color appBarColor = Color(0xff03061C);
  Color backgroundColor = Color(0xff03061B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: appBarColor,
      ),
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Card(
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "${widget.data}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
