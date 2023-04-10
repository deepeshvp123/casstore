import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:casstore/listview/your_order(2).dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class TripUpdate extends StatefulWidget {
  const TripUpdate({super.key});

  @override
  State<TripUpdate> createState() => _TripUpdateState();
}

class _TripUpdateState extends State<TripUpdate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 248, 246, 246),
        automaticallyImplyLeading: false,
        bottom: AppBar(
          elevation: 0,
          leadingWidth: 40,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromARGB(255, 248, 246, 246),
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
            "Trip Update",
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
              child: Stack(
                children: [
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnotherStepper(
                            stepperList: stepList,
                            stepperDirection: Axis.vertical,
                            iconWidth: 18,
                            iconHeight: 18,
                            activeBarColor: Colors.blue,
                            inActiveBarColor: Colors.grey,
                            // inverted: true,
                            verticalGap: 25,
                            activeIndex: 5,
                            barThickness: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 240,
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 175,
                    left: 240,
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 240,
                    left: 240,
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 310,
                    left: 240,
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "confirm",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "Complete Trip",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: Text(
                      "Delivery Note Signature",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

List<StepperData> stepList = [
  StepperData(
      title: StepperText("Trip Accepted",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: StepperText(" Trip assigned to Truck no:56432",
          textStyle: const TextStyle(color: Colors.black, fontSize: 12)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("Truck Loaded ",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: StepperText("Trip assigned to delivery location",
          textStyle: const TextStyle(color: Colors.black, fontSize: 12)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Delivery in point A",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: StepperText("Place name A",
          textStyle: const TextStyle(color: Colors.black, fontSize: 12)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Delivery in point B",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: StepperText("Place name B",
          textStyle: const TextStyle(color: Colors.black, fontSize: 12)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("Final Delivery",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      subtitle: StepperText("Final delivery location",
          textStyle: const TextStyle(color: Colors.black, fontSize: 12)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
];
