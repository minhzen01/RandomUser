import 'package:api/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationDetailScreen extends StatelessWidget {
  const InformationDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleInformation),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
