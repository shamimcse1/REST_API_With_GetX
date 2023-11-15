import 'dart:convert';

import 'package:get/get.dart';

import '../../../data/model/user_model.dart';

class UserProvider extends GetConnect {
  
  @override
  void onInit() {

  }

  Future<List<UserModel>> getUserModel() async {
    var list = <UserModel>[];
    final response = await get('https://jsonplaceholder.typicode.com/users');

    if(response.body != null){
      var result = response.body;
      result.forEach((user){
        list.add(UserModel.fromJson(user));
      });
    }
    return list;
  }
}
