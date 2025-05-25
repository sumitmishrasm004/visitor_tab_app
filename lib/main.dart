import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:visitor_app/constant/routes/routes.dart';
import 'package:visitor_app/view/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Visitor App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
