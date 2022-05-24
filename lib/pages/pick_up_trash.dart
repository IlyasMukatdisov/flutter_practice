import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/payment_detail_box.dart';
import 'package:flutter_practice/widgets/trash_category_item.dart';
import 'package:flutter_practice/widgets/weight_estimation_item.dart';

import '../res/colors/AppColors.dart';

class PickUpTrashPage extends StatefulWidget {
  const PickUpTrashPage({Key? key}) : super(key: key);

  @override
  State<PickUpTrashPage> createState() => _PickUpTrashPageState();
}

class _PickUpTrashPageState extends State<PickUpTrashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Pick Up Trash",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 16,
                            decoration: TextDecoration.none),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: AppColors.accentColor),
              padding:
                  EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.place_outlined,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pick up Location",
                              style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  color: AppColors.mainColor),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Tramrin City Residence, Jakarta",
                              style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  color: AppColors.mainColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          icon: Icon(
                            Icons.message_outlined,
                            color: AppColors.mainColor,
                          ),
                          hintText: "Add additional notes"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trash Categories",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.backgroundColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            TrashCategoryItem(
                                iconData: Icons.ac_unit_outlined,
                                header: "PET (Polyethylene Terephthalate)",
                                textColor: AppColors.mainColor,
                                backgroundColor: AppColors.backgroundColor,
                                description:
                                    "PET (PolyEthylene Terephthalate plastic type has a very high melting or melting point"),
                          ],
                        ),
                      ),
                      Text(
                        "Weight Estimation",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          WeightEstimationItem(),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Payment",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PaymentDetailBox(),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                              color: AppColors.mainColor),
                          child: Text(
                            "Pick Up Trash",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
