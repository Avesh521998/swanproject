import 'package:flutter/material.dart';

aimAppBar() {
  return AppBar(
    elevation: 2,
    actions: [
      Padding(padding: EdgeInsets.only(right: 20),
      child: IconButton(
        icon: Icon(
          Icons.menu,
        ),
        onPressed: () {},
        color: Color.fromRGBO(16, 184, 167, 1),
        iconSize: 35,
      ),
      ),
    ],
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: Padding(
      padding: EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
      child: ClipOval(
        child: Image.asset('assets/logo.png',
          fit: BoxFit.cover,
          height: 25,
          width: 25,
        ),
      ),
    ),
  );
}
