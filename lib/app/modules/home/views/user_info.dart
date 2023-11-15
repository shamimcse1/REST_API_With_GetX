import 'package:flutter/material.dart';
import 'package:rest_api/app/data/model/user_model.dart';

class UserInfo extends StatelessWidget {
  late UserModel userModel;
  UserInfo({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
        side:  const BorderSide(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(8),

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(userModel.name!),
            Text(userModel.email!),
            Text(userModel.phone!),
            Text(userModel.website!),
          ],
        ),
      ),
    );
  }
}
