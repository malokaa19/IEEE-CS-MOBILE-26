import 'package:flutter/material.dart';

class Bmiresult extends StatelessWidget {
  const Bmiresult({
    super.key,
    required this.gender,
    required this.result,
    required this.age,
    required this.height,
    required this.weight,
  });
  final String gender;
  final int result;
  final int age;
  final double height;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 1, 32),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 600,
              width: 500,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "BMI Results",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "$result",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 109, 16, 16),
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Details:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Gender: $gender",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 65, 3, 3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "AGE: $age",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 65, 3, 3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Height: ${height.toInt()}",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 65, 3, 3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Weight: $weight",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 65, 3, 3),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: 70,
            width: 600,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 46, 4, 4),
              borderRadius: BorderRadius.circular(100),
            ),

            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Save the results",
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
    );
  }
}
