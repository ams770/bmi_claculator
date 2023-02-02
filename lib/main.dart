import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color darkGrey = const Color(0xFF0A0E21);
Color lightGrey = const Color(0xFF1F1B31);
Color iconColor = const Color(0xFF211D36);
Color purple = const Color(0xFFEB114E);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: darkGrey,
        appBar: AppBar(
          title: const Text(
            "BMI CALCULATOR",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          backgroundColor: darkGrey,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("MALE");
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        print("FEMALE");
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: lightGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "HEIGHT",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (myCurrentValue.ceil()).toString(),
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: purple,
                      inactiveColor: Colors.grey,
                      value: myCurrentValue,
                      max: 200,
                      min: 50,
                      onChanged: (double currentValue) {
                        setState(() {
                          myCurrentValue = currentValue;
                          print(currentValue);
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "WEIGHT",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            myCurrentWeight.toString(),
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                backgroundColor: iconColor,
                                child: const Icon(CupertinoIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    myCurrentWeight--;
                                  });
                                },
                              ),
                              FloatingActionButton(
                                backgroundColor: iconColor,
                                child: const Icon(CupertinoIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    myCurrentWeight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "AGE",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            myCurrentAge.toString(),
                            style: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                backgroundColor: iconColor,
                                child: const Icon(CupertinoIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    myCurrentAge--;
                                  });
                                },
                              ),
                              FloatingActionButton(
                                backgroundColor: iconColor,
                                child: const Icon(CupertinoIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    myCurrentAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),


        bottomSheet: Container(
          height: 60,
          width: double.infinity,
          color: purple,
          child: const Center(
              child: Text(
            "CALCULATE",
            style: TextStyle(color: Colors.white),
          )),
        ),
     
     
      ),
    );
  }
}

double myCurrentValue = 70;
int myCurrentAge = 21;
int myCurrentWeight = 60;
