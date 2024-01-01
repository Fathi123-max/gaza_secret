import 'package:flutter/material.dart';
import 'package:flutter_slimy_card/flutter_slimy_card.dart';
import 'package:gaza_secret/app/controller/details/details_controller.dart';
import 'package:gaza_secret/app/controller/home/home_controller.dart';
import 'package:get/get.dart';

class DetailsPage extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: 400,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(32),
            child: GetX<DetailsController>(
              builder: (_) {
                _.post = Get.find<HomeController>().post;
                return ListView(
                  children: <Widget>[
                    FlutterSlimyCard(
                      color: Colors.red,
                      // width: 400,
                      topCardHeight: 150,
                      bottomCardHeight: 300,
                      borderRadius: 15,
                      // topCardWidget: CardTopCustomWidget(),
                      // bottomCardWidget: CardBottomCustomWidget(),
                      slimeEnabled: true,
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
