import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rest_api/app/modules/home/views/user_info.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(() =>
            ListView.builder(
              itemCount: controller.users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title:UserInfo(userModel: controller.users[index]),
                );
              },
            ),)

    );
  }
}