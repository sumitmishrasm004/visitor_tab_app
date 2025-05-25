import 'package:flutter/material.dart';
import 'package:visitor_app/view_models/controllers/login/login_controllers.dart';
import 'package:visitor_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:visitor_app/widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  LoginViewModel loginViewModel = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width * 0.5,
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.3,
                ),
                const Center(
                  child: Text("Login"),
                ),
                CustomTextField(
                    placeholder: "Name",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: loginViewModel.nameController.value),
                CustomTextField(
                    placeholder: "Email",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {},
                    controller: loginViewModel.emailController.value),
                CustomTextField(
                    placeholder: "Mobile Number",
                    keyboardType: TextInputType.number,
                    validator: (value) {},
                    controller: loginViewModel.mobileController.value),
                CustomTextField(
                    placeholder: "Person to Meet",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: loginViewModel.personToMeetController.value),
                CustomTextField(
                    placeholder: "Purpose",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: loginViewModel.purposeController.value),
                CustomTextField(
                    placeholder: "Organization",
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    controller: loginViewModel.organizationController.value),
                CustomTextField(
                    placeholder: "Department",
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    controller: loginViewModel.departmentController.value),
                Obx(() => RoundButton(
                      width: 200,
                      loading: loginViewModel.loading.value,
                      title: "login".tr,
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          loginViewModel.loginApi();
                        }
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
