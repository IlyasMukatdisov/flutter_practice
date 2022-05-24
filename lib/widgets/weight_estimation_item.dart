import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';

class WeightEstimationItem extends StatelessWidget {
  const WeightEstimationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 20),
                    decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.remove,
                      color: AppColors.mainColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text("3.5",
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 10,
                ),
                Container(
                    padding: EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 20),
                    decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Icon(
                      Icons.add,
                      color: AppColors.mainColor,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text("Kg")
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "30+ Points",
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20),
                ),
                SizedBox(height: 5,),
                Text("Estimation Point")
              ],
            )
          ],
        ),
      ),
    );
  }
}
