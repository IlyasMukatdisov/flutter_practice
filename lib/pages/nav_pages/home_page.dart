import 'package:flutter/material.dart';
import 'package:flutter_practice/res/colors/AppColors.dart';
import 'package:flutter_practice/widgets/services_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(color: AppColors.backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Top section
          Container(
            padding: EdgeInsets.only(top: 70, left: 20, right: 20),
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
                        SizedBox(
                          height: 5,
                        ),
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
          //Main section
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //Balance Points
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Balance",
                                  style: TextStyle(color: Colors.white)),
                              Text("Points",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("\$678.0",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                              Text("2.095",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24)),
                            ],
                          )
                        ],
                      ),
                    ),
                    //Services
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ServicesItem(
                                iconData: Icons.delete,
                                name: "Pick Up Trash",
                                iconColor: AppColors.mainColor,
                                iconBackgroundColor:
                                    AppColors.iconBackgroundColor,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              ServicesItem(
                                  iconData: Icons.document_scanner,
                                  name: "My Billings",
                                iconColor: AppColors.mainColor,
                                iconBackgroundColor:
                                AppColors.iconBackgroundColor,),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ServicesItem(
                                  iconData: Icons.bookmark, name: "My Voucher",
                                iconColor: AppColors.mainColor,
                                iconBackgroundColor:
                                AppColors.iconBackgroundColor,),
                              SizedBox(
                                width: 20,
                              ),
                              ServicesItem(
                                  iconData: Icons.phone, name: "Help Center",
                                iconColor: AppColors.mainColor,
                                iconBackgroundColor:
                                AppColors.iconBackgroundColor,),
                            ],
                          )
                        ],
                      ),
                    ),
                    //Get A gift
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      alignment: Alignment.topLeft,
                      child: Text("Get a gift", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainColor
                      ),),
                    ),
                    //Get Cashback
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: AppColors.greenColor,
                      ),
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(child: Icon(Icons.credit_card, size: 120, color: AppColors.mainColor)),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Get Cashback 40%", style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.mainColor
                                ),),
                                SizedBox(height: 10,),
                                Text("For first purchace you can get 40% cashback using gopay",
                                style: TextStyle(
                                  color: AppColors.mainColor
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
