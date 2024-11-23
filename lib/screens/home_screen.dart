// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:bmi_calculator/provider/calculator_provider.dart';
import 'package:bmi_calculator/widgets/custom_cards.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/color_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "bmi calculator".toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: appBarColor,
      ),
      backgroundColor: backgroundColor,
      body: Consumer<CalculatorProvider>(
        builder:
            (BuildContext context, CalculatorProvider provider, Widget? child) {
          return Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          provider.isMaleTrue(isMale);
                        },
                        child: Container(
                          child: CustomCards(
                            color: isMale == true
                                ? Colors.deepPurpleAccent
                                : cardColor,
                            myChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 45,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          provider.isMaleFalse(isMale);
                        },
                        child: Container(
                          child: CustomCards(
                            color: isMale == false
                                ? Colors.deepPurpleAccent
                                : cardColor,
                            myChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 45,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  // onTap: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomCards(
                      color: cardColor,
                      myChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style: TextStyle(
                              fontSize: 34,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "${height.toStringAsFixed(1)}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "CM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.red,
                            inactiveColor: Colors.blue,
                            thumbColor: Colors.amber,
                            min: 70,
                            max: 210,
                            value: height,
                            onChanged: (value) {
                              provider.heightCalculate(value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: CustomCards(
                            color: cardColor,
                            myChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "${weight.toStringAsFixed(0)}",
                                  style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(12),
                                        shape: CircleBorder(),
                                      ),
                                      onPressed: () {
                                        provider.weightCalculateIncrease();
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(12),
                                      ),
                                      onPressed: () {
                                        provider.weightCalculateDecrease();
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.purple,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: CustomCards(
                            color: cardColor,
                            myChild: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                    fontSize: 34,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "$age",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 34,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(12),
                                      ),
                                      onPressed: () {
                                        provider.ageCalculateIncrease();
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: CircleBorder(),
                                        padding: EdgeInsets.all(12),
                                      ),
                                      onPressed: () {
                                        provider.ageCalculateDecrease();
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.purple,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Colors.pink,
                onPressed: () {
                  // provider.result();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(),
                    ),
                  );
                },
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
