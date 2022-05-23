import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70,left: 20,right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi Johny",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.mainColor,
                                fontSize: 24)),
                        Text(
                          "Have you take out the trash today?",
                          style: TextStyle(color: AppColors.mainColor),
                        )
                      ],
                    ),
                    Icon(
                      Icons.person,
                      size: 40,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow
              ),
            ),
          )
        ],
      ),
    );
  }
}
