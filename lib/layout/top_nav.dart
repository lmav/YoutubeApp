import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {

  final IconData icon;

  final Color iconColor; 

  TopNav(this.icon, this.iconColor);

  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon ,color: iconColor,),
    );
  }
}
