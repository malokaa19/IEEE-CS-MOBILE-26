import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutterproject3/screens/Bmiresult.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  bool click = true;
  double height = 150;
  int weight = 50;
  int age = 23;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 1, 32),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {});
                    click = false;
                  },
                  child: Container(
                    height: 280,
                    width: 280,
                    decoration: BoxDecoration(
                      color: !click
                          ? const Color.fromARGB(255, 57, 7, 7)
                          : const Color.fromARGB(25, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Icon(
                            FontAwesomeIcons.mars,
                            size: 90,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "MALE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 80),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      click = true;
                    });
                  },
                  child: Container(
                    height: 280,
                    width: 280,
                    decoration: BoxDecoration(
                      color: click
                          ? const Color.fromARGB(255, 57, 5, 5)
                          : const Color.fromARGB(25, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Icon(
                            FontAwesomeIcons.venus,
                            size: 90,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "FEMALE",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: const Color.fromARGB(25, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height(CM)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "${height.toInt()}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Slider(
                    activeColor: const Color.fromARGB(255, 57, 6, 6),
                    value: height,
                    min: 50,
                    max: 190,
                    onChanged: (val) {
                      height = val;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 270,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(25, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight(KG)",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "$weight",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              57,
                              6,
                              6,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 80),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              57,
                              7,
                              7,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                                weight: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 100),
                Container(
                  width: 250,
                  height: 270,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(25, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "$age",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              57,
                              6,
                              6,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(width: 80),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(
                              255,
                              57,
                              7,
                              7,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 20,
                                weight: 100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              height: 70,
              width: 600,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 57, 7, 7),
                borderRadius: BorderRadius.circular(100),
              ),
              child: MaterialButton(
                onPressed: () {
                  double result = weight / pow(height / 100, 2);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Bmiresult(
                          gender: click ? "FEMALE" : "MALE",
                          result: result.toInt(),
                          age: age,
                          height: height,
                          weight: weight,
                        );
                      },
                    ),
                  );
                },
                child: Text(
                  "Check Your BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
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
