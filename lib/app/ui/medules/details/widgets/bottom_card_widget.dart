import 'package:flutter/material.dart';
import 'package:gaza_secret/app/controller/details/details_controller.dart';
import 'package:gaza_secret/app/ui/theme/styles/app_text_theme.dart';
import 'package:get/get.dart';

class CardBottomCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              child: GetX<DetailsController>(
                  builder: (_) => Text(
                        _.post.body,
                        style: cardTextStyle,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
