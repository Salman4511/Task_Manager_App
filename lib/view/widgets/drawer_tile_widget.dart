import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class DrawerTileWidget extends StatelessWidget {
  final String title;
  const DrawerTileWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 60,
        width: 500,
        decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: Text(title,style: textstyle1,)),
      ),
    );
  }
}
