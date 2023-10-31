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
      backgroundColor: const Color(0xFF0A0F1D),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        backgroundColor: const Color(0xFF0A0F1D),
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
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' : 'Female'}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                color: Colors.white,
                thickness: 0.6,
                endIndent: 0,
                indent: 0,
                height: 10,
              ),
            ),
            Text(
              'BMI : ${bmi.roundToDouble()}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                color: Colors.white,
                thickness: 0.6,
                endIndent: 0,
                indent: 0,
                height: 10,
              ),
            ),
            Text(
              'Height : ${height.round()}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                color: Colors.white,
                thickness: 0.6,
                endIndent: 0,
                indent: 0,
                height: 10,
              ),
            ),
            Text(
              'Weight : ${weight.round()}',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                color: Colors.white,
                thickness: 0.6,
                endIndent: 0,
                indent: 0,
                height: 10,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Divider(
                color: Colors.white,
                thickness: 0.6,
                endIndent: 0,
                indent: 0,
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
