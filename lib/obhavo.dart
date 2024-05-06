import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: TextButton(
          onPressed: () {},
          child: Image.asset("assets/images/menu.png"),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/option.png"),
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Bandung, Indonesia",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      width: 376,
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/cloudy.png",
                              scale: 5,
                            ),
                            const Text(
                              "Heavy Rain",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "24º",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 110),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 37.5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 185.5,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border:
                                              Border.all(color: Colors.white),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  "assets/images/wind.png",
                                                  color: Colors.white,
                                                  scale: 20,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "WIND\n19.2km/j",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 185.5,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          border: Border.all(
                                              color: Colors
                                                  .white), // Sınır eklemek
                                          // Düzeltme
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  "assets/images/temperature.png",
                                                  color: Colors.white,
                                                  scale: 20,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "FEELS LIKE\n25C",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 185.5,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(30),
                                          ),
                                          border:
                                              Border.all(color: Colors.white),
                                          // Sınır eklemek
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  "assets/images/ray.png",
                                                  color: Colors.white,
                                                  scale: 20,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "INDEX UV\n2",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 185.5,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                          ),
                                          border: Border.all(
                                              color: Colors
                                                  .white), // Sınır eklemek
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Image.asset(
                                                  "assets/images/wave.png",
                                                  color: Colors.white,
                                                  scale: 20,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "PRESSUDE\n1014 mbar",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      "Today",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Next7DaysPage(),
                              ),
                            );
                          },
                          child: Text(
                            "Next 7 Days",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Icon(Icons.chevron_right_outlined)
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "12:00",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "NOW",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 212, 212),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "14:00",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "24º",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 212, 212),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "16:00",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "26º",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 212, 212),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "18:00",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "28º",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 212, 212),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "20:00",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "30º",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 212, 212),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "22:00",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                        Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Image.asset("assets/images/cloudy.png")),
                        ),
                        Container(
                          child: Text(
                            "20º",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Next7DaysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Bandung, Indonesia",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              // height: 784,
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Next 7 Days",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/sun.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/sun.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/cloudy.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/cloudy.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/cloudy.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/cloudy.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 380,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/images/sun.png",
                              scale: 18,
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Monday, 3 Oct",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "32/31º",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 191,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
