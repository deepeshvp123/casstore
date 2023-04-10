import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class YourOrder2 extends StatefulWidget {
  const YourOrder2({super.key});

  @override
  State<YourOrder2> createState() => _YourOrder2State();
}

class _YourOrder2State extends State<YourOrder2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order in Progress",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text.rich(TextSpan(
                        text: "Order ID:",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text.rich(TextSpan(
                        text: "2208",
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text.rich(TextSpan(
                        text: "Order Date:",
                        style: TextStyle(color: Colors.grey.shade500),
                      )),
                      const SizedBox(
                        width: 2,
                      ),
                      const Text.rich(TextSpan(
                        text: "01 Feb 2023",
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "HMD Port",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          ),
                          Text(
                            "Doha",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " 11:42 am",
                      ),
                      Text(
                        "05:35 pm",
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Card(
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
                    inActiveBarColor: Colors.blue,
                    // inverted: true,
                    verticalGap: 15,
                    activeIndex: 5,
                    barThickness: 4,
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Package details",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: const [
                            Text(
                              "4",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("x"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "*3",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Receipt details",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: const [
                            Text(
                              "Doha",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<StepperData> stepList = [
  StepperData(
      title: StepperText("Pickup request recieved ",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Partner is on the way for pickup",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Partner is on the way for pickup",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("Package has been picked up",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Package arrived at hub",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("In transit",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("Package arrived at nearest hub",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      )),
  StepperData(
      title: StepperText("Out for delivery",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      )),
  StepperData(
      title: StepperText("Delivered",
          textStyle: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16)),
      iconWidget: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green,
        ),
      )),
];
