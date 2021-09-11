import 'dart:ui';

import 'package:ecommerceapp/config/app_router.dart';
import 'package:ecommerceapp/config/theme.dart';
import 'package:ecommerceapp/screens/home/home_screen.dart';
import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TropicoApp());
}

class TropicoApp extends StatelessWidget {
  const TropicoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tropico",
      theme: theme(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}




