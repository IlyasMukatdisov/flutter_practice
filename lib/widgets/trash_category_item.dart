import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class TrashCategoryItem extends StatelessWidget {
  const TrashCategoryItem(
      {Key? key,
      required this.iconData,
      required this.header,
      required this.textColor,
      required this.backgroundColor,
      required this.description})
      : super(key: key);

  final IconData iconData;
  final String header;
  final String description;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.circular(20)),
        padding:
            const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.expand_less,
                      size: 16,
                    ),
                    Icon(
                      Icons.expand_more,
                      size: 16,
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  header,
                  style: TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 36,
                ),
                Icon(
                  iconData,
                  size: 100,
                  color: textColor,
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    children: [
                      Text(description,
                          style: TextStyle(fontSize: 14, color: textColor)),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
