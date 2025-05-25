
import 'package:flutter/material.dart';
import 'package:visitor_app/constant/colors/app_colors.dart';

class CustomButton extends StatefulWidget {
  String text;
  dynamic buttonAction;
  Color? textColor;
  Color? buttonColor;
  double width;
  double height;
  CustomButton(
      {Key? key,
      required this.text,
      required this.buttonAction,
      this.buttonColor = AppColors.blue,
      this.width = 100.0,
      this.height = 100.0,
      this.textColor = AppColors.black,
      })
      : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // key:  Key('${Keys.GESTURE_DETECTOR}_${widget.key.toString()}'),
        onPressed: widget.buttonAction,
        child: Text(
          widget.text,
          // key:  Key('${Keys.TEXT}_${widget.key.toString()}'),
          textScaleFactor: 1.0,
          style: const TextStyle(
              color: AppColors.white,
              fontFamily: 'Lato',
              fontSize: 18.0,
              fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(widget.width, widget.height),
          maximumSize: Size(widget.width, widget.height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
          primary: widget.buttonColor,
          // padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        ));
  }
}
