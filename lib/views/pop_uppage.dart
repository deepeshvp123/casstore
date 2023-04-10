import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:gap/gap.dart';
import 'package:get/get.dart';

class PopUpPage extends StatefulWidget {
  const PopUpPage({super.key});

  @override
  State<PopUpPage> createState() => _PopUpPageState();
}

class _PopUpPageState extends State<PopUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Row(
          children: [
            Text(
              "Reson for rejection",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 90),
                child: IconButton(
                    onPressed: () {
                      Get.close(1);
                    },
                    icon: Icon(Icons.close_rounded))),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 238, 236, 236),
        actions: [
          Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "Reason",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 15, 0, 8),
                  child: InkWell(
                    onTap: () {
                      Get.close(1);
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
