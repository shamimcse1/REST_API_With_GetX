import 'package:get/get.dart';
import 'package:rest_api/app/data/model/user_model.dart';
import 'package:rest_api/app/modules/home/providers/user_provider.dart';

class HomeController extends GetxController {
  final UserProvider _userProvider = UserProvider();

  RxList<UserModel> users = <UserModel>[].obs;


  @override
  void onInit() {
    super.onInit();
    getUserList();
  }

  void getUserList() async {
    _userProvider.getUserModel().then((response) async {
      // ignore: unnecessary_null_comparison
      if (response != null) {
        users.value = response;
      } else {}
    });
  }
}
