import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visitor_app/constant/colors/app_colors.dart';
import 'package:visitor_app/constant/app_constants.dart';
import 'package:visitor_app/constant/routes/routes_name.dart';
import 'package:visitor_app/widgets/custom_button.dart';
import 'package:visitor_app/widgets/custom_text_field.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
        children:  [
        SizedBox(height: Get.height * .3,),
        const Text(AppConstant.welcomeToThinkSys,style: TextStyle(fontSize: 40,color: AppColors.white),),
        SizedBox(height: Get.height * .3,),
          CustomButton(text: AppConstant.checkin , buttonAction: (){
            Get.toNamed(RoutesName.loginScreen);
          }, buttonColor: AppColors.transparentGrey,width: Get.width * 0.3,height: Get.height * 0.03,),
          SizedBox(height: Get.height * .02,),
          CustomButton(text: AppConstant.alreadyCheckin , buttonAction: (){
            Get.toNamed(RoutesName.homeScreen);
          }, buttonColor: AppColors.transparentGrey,width: Get.width * 0.3,height: Get.height * 0.03,)
        ],
    ),
      ),);
  }
}