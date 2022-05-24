import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class PaymentDetailBox extends StatelessWidget {
  const PaymentDetailBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Detail Payment",
                  style: TextStyle(fontSize: 18, color: AppColors.mainColor, fontWeight: FontWeight.w600)),
              Icon(
                Icons.more_horiz,
                color: AppColors.mainColor,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price Estimation"),
              Text(
                "\$1.20",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.mainColor,
                  fontWeight: FontWeight.w600
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
