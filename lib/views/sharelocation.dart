import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage("images/logopearl.png"))),
                  ),
                ),
                SizedBox(
                  height: 400,
                ),
                Text(
                  "Share your ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 119, 210),
                      fontWeight: FontWeight.w600,
                      fontSize: 32),
                ),
                SizedBox(height: 5),
                Text(
                  "location ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 7, 119, 210),
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                SizedBox(height: 6),
                Text(
                  "to view near by stores",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, right: 20),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {},
                          child: Text("Enable Location")),
                    ),
                  ),
                ),
              ]),
        ))));
  }
}
