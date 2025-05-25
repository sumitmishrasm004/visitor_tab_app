import 'package:flutter/material.dart';
import 'package:visitor_app/constant/colors/app_colors.dart';

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final double height, width;
  final VoidCallback onPress;
  final Color textColor, buttonColor;

  const RoundButton({
    Key? key,
    this.loading = false,
    required this.title,
    this.height = 50,
    this.width = 60,
    required this.onPress,
    this.textColor = AppColors.black,
    this.buttonColor = AppColors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,width: width,
        decoration: BoxDecoration(color: buttonColor,borderRadius: BorderRadius.circular(50 )),
        child: Center(child: loading ?  CircularProgressIndicator() : Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white)),),
      ),
    );
  }
}
