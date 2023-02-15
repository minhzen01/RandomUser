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
        title: const Text(titleInformation),
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
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Gender: ", style: TextStyle(fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(informationModel.gender!),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("First Name: ${informationModel.name!.first!}"),
                          Text("Last Name: ${informationModel.name!.last!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Location: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Street:"),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Number: ${informationModel.location!.street!.number!}"),
                                Text("Name: ${informationModel.location!.street!.name!}"),
                              ],
                            ),
                          ),
                          Text("City: ${informationModel.location!.city!}"),
                          Text("State: ${informationModel.location!.state!}"),
                          Text("Country: ${informationModel.location!.country!}"),
                          Text("Postcode: ${informationModel.location!.postcode!}"),
                          const Text("Coordinates: "),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Latitude: ${informationModel.location!.coordinates!.latitude}"),
                                Text("Longitude: ${informationModel.location!.coordinates!.longitude}"),
                              ],
                            ),
                          ),
                          const Text("TimeZone: "),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Offset: ${informationModel.location!.timezone!.offset!}"),
                                Text("Description: ${informationModel.location!.timezone!.description!}", softWrap: true,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Email: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(informationModel.email!),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Login: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Uuid: ${informationModel.login!.uuid!}"),
                          Text("Username: ${informationModel.login!.username!}"),
                          Text("Password: ${informationModel.login!.password!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("DOB:", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date: ${informationModel.dob!.date!}"),
                          Text("Age: ${informationModel.dob!.age!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Registered: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date: ${informationModel.registered!.date!}"),
                          Text("Age: ${informationModel.registered!.age!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    Text("Phone: ${informationModel.phone!}"),
                    const SizedBox(height: 5,),

                    Text("Cell: ${informationModel.cell!}"),
                    const SizedBox(height: 5,),

                    const Text("ID: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name: ${informationModel.id!.name!}"),
                          Text("Value: ${informationModel.id!.value!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("Picture: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Large: ${informationModel.picture!.large!}"),
                          Text("Medium: ${informationModel.picture!.medium!}"),
                          Text("Thumbnail: ${informationModel.picture!.thumbnail!}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 5,),

                    const Text("NAT: ", style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(informationModel.nat!),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
