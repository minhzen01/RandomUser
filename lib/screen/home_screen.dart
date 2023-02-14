import 'package:api/api_link/api_services.dart';
import 'package:api/models/information_model.dart';
import 'package:api/screen/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(titleHomeScreen),
        centerTitle: true,
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(15.0)))
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: FutureBuilder<List<InformationModel>>(
                future: ApiServices().fetchInformationList(),
                builder: (context, snapshot) {
                  // print(snapshot.toString());
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text(errorLoadingData),
                    );
                  }
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SizedBox(
                        height: 100.0,
                        width: 100.0,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  List<InformationModel> informationModelList = snapshot.data!;
                  return ListView.builder(
                      itemCount: informationModelList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 80,
                          child: Card(
                            elevation: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(informationModelList[index].picture!.thumbnail!),
                                      backgroundColor: Colors.transparent,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${informationModelList[index].name!.first!} ${informationModelList[index].name!.last!}",
                                          style: const TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                            informationModelList[index].location!.country!,
                                          style: const TextStyle(color: Colors.grey, fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: IconButton(
                                    icon: const Icon(Icons.navigate_next, size: 35,),
                                    onPressed: () {
                                      Get.to(InformationDetailScreen());
                                    },
                                  )
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
