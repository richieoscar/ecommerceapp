import 'package:ecommerceapp/widgets/custom_app_bar.dart';
import 'package:ecommerceapp/widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  static const String routeName = "/user";

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => UserScreen());
  }

  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "User",
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
