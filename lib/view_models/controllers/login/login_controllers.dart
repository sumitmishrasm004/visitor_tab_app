import 'package:flutter/material.dart';
import 'package:visitor_app/repository/login/login_repository.dart';
import 'package:get/get.dart';
import 'package:visitor_app/utils/helpers/helper.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();
  // UserPreference userPreference = UserPreference();
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final mobileController = TextEditingController().obs;
  final personToMeetController = TextEditingController().obs;
  final purposeController = TextEditingController().obs;
  final organizationController = TextEditingController().obs;
  final departmentController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void loginApi() {
    loading.value = true;
    Map data = {
      'name': nameController.value.text,
      'email': emailController.value.text,
      'contactNumber': mobileController.value.text,
      'personToMeet': personToMeetController.value.text,
      'purpose': purposeController.value.text,
      'organization': organizationController.value.text,
      'department': departmentController.value.text,
    };

    _api.loginApi(data).then((value) {
      loading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar("Login", value['error']);
      } else {
        // UserModel userModel = UserModel(
        //   token: value['token'],
        //   isLogin: true,
        // );
        // userPreference.saveUser(userModel).then((value) {
        //   Get.delete<LoginViewModel>();
        //   Get.toNamed(RoutesName.homeScreen)!.then((value) {});
        // }).onError((error, stackTrace) {
          
        // });
        Utils.snackBar("Login", "successful");
      }
    }).onError((error, stackTrace) {
      print("error ====> ${error.toString()}");
      print("stackTrace ====> ${stackTrace.toString()}");
      loading.value = false;
      Utils.snackBar('Error', error.toString());
    });
  }
}
