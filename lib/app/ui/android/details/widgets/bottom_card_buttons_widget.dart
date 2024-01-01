import 'package:flutter/material.dart';
import 'package:gaza_secret/app/controller/details/details_controller.dart';
import 'package:gaza_secret/app/ui/android/widgets/button_widget.dart';
import 'package:get/get.dart';

class CardBottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GetX<DetailsController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.delete_outline,
              onPressed: _.delete(_.post.id),
              text: 'Delete',
            );
          },
        ),
        GetX<DetailsController>(
          builder: (_) {
            return RaisedButtonCustomWidget(
              icon: Icons.edit,
              onPressed: _.editar(_.post),
              text: 'Editar',
            );
          },
        )
      ],
    );
  }
}
