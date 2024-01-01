import 'package:flutter/material.dart';
import 'package:gaza_secret/app/controller/details/details_controller.dart';
import 'package:gaza_secret/app/ui/theme/app_text_theme.dart';
import 'package:get/get.dart';

class CardTopCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        padding: EdgeInsets.all(16),
        child: GetX<DetailsController>(
          builder: (_) => Text(
            _.post.title,
            style: cardTextStyle,
          ),
          // builder: (_) => Text(
          //   'Call of Duty',
          //   style: cardTextStyle,
          // ),
        ),
      ),
    );
  }
}
