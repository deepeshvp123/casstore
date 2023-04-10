import 'package:casstore/views/otp_authentication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "Password Recovery",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your Email Id to recover your ",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                " Email ID ",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextField(
                  //controller: emailcontroller,
                  decoration: InputDecoration(
                      // border: OutlineInputBorder(
                      //     borderSide:
                      //         BorderSide(color: Colors.blue, width: 1)),
                      contentPadding: EdgeInsets.all(15),
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Get.to(OtpAuth());
                    },
                    child: Text(
                      "CONTINEW",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
