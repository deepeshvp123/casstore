import 'package:casstore/listview/listview.dart';
import 'package:casstore/views/pop_uppage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 234, 234),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.blue,
                        )
                      ],
                    ),
                    Gap(8),
                    Text(
                      "Robert",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    Gap(30),
                    Text(" New Delivery",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ),
            Gap(20),
            hotelpack(
                orderidprize: "2208",
                orderdate: "Order Date  :",
                text1: "HMD Port",
                text2: "Doha",
                date: "01/ Feb  2023",
                text3: "11:42 am",
                text4: "5:35 pm",
                orderid: "Order ID  :"),
            Gap(20),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(" Recent Order",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))),
            Gap(20),
            Cardd(),
            Gap(8),
            Cardd(),
            Gap(8),
            Cardd(),
            Gap(8),
            Cardd(),
            Gap(8),
          ],
        ),
      ),
    );
  }
}

class hotelpack extends StatelessWidget {
  final String orderidprize;
  final String orderdate;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String orderid;
  final String date;

  hotelpack({
    required this.orderidprize,
    required this.orderdate,
    required this.text1,
    required this.text2,
    required this.date,
    required this.text3,
    required this.text4,
    required this.orderid,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    orderid,
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Gap(5),
                  Text(orderidprize)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        orderdate,
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Gap(5),
                      Text(date)
                    ],
                  )
                ],
              ),
              Gap(20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
              Gap(10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(text3), Text(text4)],
                  ),
                  Gap(15),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                            ),
                            Container(
                              height: 1.3,
                              width: 244,
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(25),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 35,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text(
                                "Accept",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return PopUpPage(

                                    );
                                  });
                            },
                            child: Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Text(
                                  "Decline",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
