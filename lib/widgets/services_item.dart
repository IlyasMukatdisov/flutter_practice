import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class ServicesItem extends StatelessWidget {
  const ServicesItem(
      {Key? key,
      required this.iconData,
      required this.name, required this.iconColor, required this.iconBackgroundColor})
      : super(key: key);

  final IconData iconData;
  final String name;
  final Color iconColor;
  final Color iconBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20)
        ),
        padding: const EdgeInsets.only(left: 20,right: 20,top: 30, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: iconBackgroundColor,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Icon(iconData, color: iconColor)),
              Icon(Icons.more_horiz, color: iconColor)
            ],
          ),
            const SizedBox(height: 10,),
            Text(name, style: TextStyle(
              color: iconColor
            ),)],
        ),
      ),
    );
  }
}
