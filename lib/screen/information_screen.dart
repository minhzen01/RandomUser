import 'package:api/constant/strings.dart';
import 'package:api/models/information_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationDetailScreen extends StatelessWidget {
  final InformationModel informationModel;
  const InformationDetailScreen({
    Key? key,
    required this.informationModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titleInformation),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(informationModel.picture!.large!),
                ),
              ),
              Center(
                child: Text(
                  "${informationModel.name!.title!}. ${informationModel.name!.first!} ${informationModel.name!.last!}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text("Gender"),
              Text("Name"),
              Text("Location"),
              Text("Email"),
              Text("Login"),
              Text("DOB"),
              Text("Registered"),
              Text("Phone"),
              Text("Cell"),
              Text("ID"),
              Text("Picture"),
              Text("NAT"),
            ],
          ),
        ),
      ),
    );
  }
}
