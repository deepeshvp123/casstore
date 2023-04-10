import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeliveryNote extends StatelessWidget {
  const DeliveryNote({super.key});

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
            "Delivery Note Signature",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 10,
          ),
          child: Column(
            children: [
              Container(
                height: 570,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5), color: Colors.blue),
                child: Center(
                  child: Text(
                    "Complete signature",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
