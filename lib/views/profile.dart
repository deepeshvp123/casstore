import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 234, 234),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(padding: EdgeInsets.only(left: 50,top: 50)),
            //   CircleAvatar(
            //     backgroundImage: AssetImage("images/Untitled.jpg"),
            //   )/
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10),
              child: Container(
                height: 50,
                width: double.infinity,
                color: Color.fromARGB(255, 235, 234, 234),
                child: Row(
                  children: [
                    // CircleAvatar(
                    //   radius: 20,
                    //   backgroundImage: AssetImage("images/profile.png"),
                    // ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          //color: Colors.black12,
                          borderRadius: BorderRadius.circular(200),
                          image: DecorationImage(
                              image: AssetImage("images/profile.png"),
                              fit: BoxFit.cover)),
                    ),
                    Gap(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                          top: 8,
                        )),
                        Text(
                          "Willian John",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text("Delivery man"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.library_books_sharp,
                            size: 25,
                          ),
                          Gap(35),
                          Text(
                            "Personal Data",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Gap(25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              Gap(35),
                              Text(
                                " Settings",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      Gap(25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.plagiarism_outlined,
                                size: 25,
                              ),
                              Gap(35),
                              Text(
                                "E statement",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              )
                            ],
                          )
                        ],
                      ),
                      Gap(25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.logout_outlined,
                                size: 25,
                              ),
                              Gap(35),
                              Text(
                                "sign out",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.message_rounded,
                            size: 25,
                          ),
                          Gap(35),
                          Text(
                            "FAQs",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
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
