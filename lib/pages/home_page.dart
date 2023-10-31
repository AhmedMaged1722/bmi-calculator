import 'dart:math';

import 'package:bmi_app/pages/calc_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 170;
  double weight = 50;
  int age = 25;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F1D),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0F1D),
        centerTitle: true,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale
                                ? const Color(0xFFD4004B)
                                : const Color(0xFF1A1A2C),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 75,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: isMale
                                ? const Color(0xFF1A1A2C)
                                : const Color(0xFFD4004B),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 75,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF1A1A2C),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '${height.round()}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            'CM',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Slider(
                        thumbColor: const Color(0xFFD4004B),
                        inactiveColor: Colors.white,
                        // secondaryActiveColor: Colors.white,
                        value: height,
                        max: 210.0,
                        min: 80.0,
                        onChanged: (value) {
                          setState(() {
                            height = value.roundToDouble();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1A1A2C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Weight',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${weight.round()}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  backgroundColor: const Color(0xFF434552),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  backgroundColor: const Color(0xFF434552),
                                  child: const Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF1A1A2C),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Age',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$age',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 42,
                                  fontWeight: FontWeight.w900),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  backgroundColor: const Color(0xFF434552),
                                  child: const Icon(
                                    Icons.remove,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  backgroundColor: const Color(0xFF434552),
                                  child: const Icon(
                                    Icons.add,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            color: const Color(0xFFD4004B),
            child: MaterialButton(
              onPressed: () {
                var result = weight / pow(height / 100, 2);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CalcPage(
                              isMale: isMale,
                              height: height,
                              bmi: result,
                              weight: weight,
                              age: age,
                            )));
              },
              child: const Text(
                'Calculate',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
