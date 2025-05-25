import 'package:flutter/material.dart';
import 'package:visitor_app/view_models/controllers/edit_user/edit_user_controllers.dart';
import 'package:visitor_app/view_models/controllers/login/login_controllers.dart';
import 'package:visitor_app/widgets/custom_text_field.dart';
import 'package:get/get.dart';
import 'package:visitor_app/widgets/round_button.dart';

class EditUserScreen extends StatefulWidget {
  const EditUserScreen({Key? key}) : super(key: key);

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  final _formKey = GlobalKey<FormState>();
  EditUserModel editUserModel = Get.put(EditUserModel());
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
                  child: Text("Edit User"),
                ),
                CustomTextField(
                    placeholder: "Name",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: editUserModel.nameController.value),
                CustomTextField(
                    placeholder: "Email",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {},
                    controller: editUserModel.emailController.value),
                CustomTextField(
                    placeholder: "Mobile Number",
                    keyboardType: TextInputType.number,
                    validator: (value) {},
                    controller: editUserModel.mobileController.value),
                CustomTextField(
                    placeholder: "Person to Meet",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: editUserModel.personToMeetController.value),
                CustomTextField(
                    placeholder: "Purpose",
                    keyboardType: TextInputType.name,
                    validator: (value) {},
                    controller: editUserModel.purposeController.value),
                CustomTextField(
                    placeholder: "Organization",
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    controller: editUserModel.organizationController.value),
                CustomTextField(
                    placeholder: "Department",
                    keyboardType: TextInputType.text,
                    validator: (value) {},
                    controller: editUserModel.departmentController.value),
                Obx(() => RoundButton(
                      width: 200,
                      loading: editUserModel.loading.value,
                      title: "login".tr,
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          editUserModel.updateVisitor();
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
