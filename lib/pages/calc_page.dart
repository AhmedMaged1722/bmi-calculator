import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CalcPage extends StatelessWidget {
  CalcPage(
      {super.key,
      required this.bmi,
      required this.isMale,
      required this.height,
      required this.weight,
      required this.age});

  bool isMale;
  double bmi;
  double height;
  double weight;
  int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1232),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0D1232),
        centerTitle: true,
        title: const Text(
          'BMI Result',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 250,
              color: const Color(0xFF252A48),
              child: Center(
                child: Text(
                  'Gender : ${isMale ? 'Male' : 'Female'}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 250,
              color: const Color(0xFF252A48),
              child: Center(
                child: Text(
                  'Result : ${bmi.roundToDouble()}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 250,
              color: const Color(0xFF252A48),
              child: Center(
                child: Text(
                  'Age : $age',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
