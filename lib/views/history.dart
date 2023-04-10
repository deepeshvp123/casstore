import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 234, 234),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    "History",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                hotelpack(
                    orderidprize: "2208",
                    orderdate: "Order Date  :",
                    text1: "HMD Port",
                    text2: "Doha",
                    date: "01/ Feb  2023",
                    text3: "11:42 am",
                    text4: "5:35 pm",
                    orderid: "Order ID  :"),
                Gap(8),
                hotelpack(
                    orderidprize: "2213",
                    orderdate: "Order Date  :",
                    text1: "CDF Port",
                    text2: "Doha",
                    date: "03/ Feb  2023",
                    text3: "10:12 am",
                    text4: "03:05 pm",
                    orderid: "Order ID  :"),
                hotelpack(
                    orderidprize: "2208",
                    orderdate: "Order Date  :",
                    text1: "HMD Port",
                    text2: "Doha",
                    date: "01/ Feb  2023",
                    text3: "11:42 am",
                    text4: "5:35 pm",
                    orderid: "Order ID  :"),
                Gap(8),
                hotelpack(
                    orderidprize: "2213",
                    orderdate: "Order Date  :",
                    text1: "CDF Port",
                    text2: "Doha",
                    date: "03/ Feb  2023",
                    text3: "10:12 am",
                    text4: "03:05 pm",
                    orderid: "Order ID  :"),
                Gap(8),
                hotelpack(
                    orderidprize: "2208",
                    orderdate: "Order Date  :",
                    text1: "HMD Port",
                    text2: "Doha",
                    date: "01/ Feb  2023",
                    text3: "11:42 am",
                    text4: "5:35 pm",
                    orderid: "Order ID  :"),
                Gap(10),
              ],
            ),
          ),
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
        height: 160,
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
                  Text(
                    orderidprize,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Gap(6),
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
                      Text(
                        date,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
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
              Gap(5),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text3,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        text4,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              Gap(10),
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
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                        ),
                        Container(
                          height: 1.5,
                          width: 244,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
