import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 234, 234),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 235, 234, 234),
        automaticallyImplyLeading: false,
        bottom: AppBar(
          elevation: 0,
          leadingWidth: 40,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 235, 234, 234),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          title: const Text(
            "Notifications",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
        height: 110,
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
                  ),
                  Gap(60),
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
                  ),
                ],
              ),
              Gap(15),
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
              Gap(6),
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
            ],
          ),
        ),
      ),
    );
  }
}
