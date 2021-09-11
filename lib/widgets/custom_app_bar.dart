import 'package:ecommerceapp/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
   
     Key? key,
     required this.title

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Container(
        margin: EdgeInsets.only(top: 5),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black,
          child: Text(
            title,
            style:Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
          )),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [IconButton(onPressed: () {
        Navigator.pushNamed(context, WishListScreen.routeName);
      }, icon: Icon(Icons.favorite))],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
