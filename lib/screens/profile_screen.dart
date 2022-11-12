import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Applayout.getHeight(20),
            vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getWidht(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Applayout.getHeight(86),
                width: Applayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(Applayout.getHeight(10)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              Gap(Applayout.getWidht(20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book tickets",
                    style: Styles.headLineStyle1,
                  ),
                  Gap(Applayout.getWidht(2)),
                  Text(
                    "New-york",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(Applayout.getWidht(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:Applayout.getHeight(3) ,vertical: Applayout.getHeight(3)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Applayout.getHeight(100)),
                        color: const Color(0xfffef4f3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xff526799)),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white ,size:15 ,),

                        ),
                        Gap(Applayout.getWidht(8)),
                        Text("Premium status", style: TextStyle(color: Color(0xff526799), fontWeight: FontWeight.w600),),
                        Gap(Applayout.getWidht(8)),

                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                      onTap: (){
                        print("you are tapped");
                      },
                      child: Text("Edit",style: Styles.textStyle.copyWith(color: Styles.primeryColor, fontWeight: FontWeight.w300),))
                ],
              )
            ],
          ),
          Gap(Applayout.getWidht(8)),
          Divider(color: Colors.grey.shade300,),
          Gap(Applayout.getWidht(8)),
          Stack(
            children: [
              Container(
                height: Applayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primeryColor,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(18))

                ),
              ),
             Positioned(
               right: -45,
                 top: -40,

                 child:  Container(
               padding: EdgeInsets.all(Applayout.getHeight(30)),
               decoration: BoxDecoration(
                 color: Colors.transparent,
                 shape: BoxShape.circle,
                 border: Border.all(width: 18, color: Color(0xff264cd2)),

               ),
             )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20),vertical: Applayout.getHeight(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primeryColor,size: 27,),
                    ),
                     Gap(Applayout.getHeight(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start ,
                      children: [
                        Text("You\'v got  a new award", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                        Text("you have 95 flight in a year", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white.withOpacity(0.9),fontSize: 16),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(Applayout.getWidht(25)),
          Text("Accumulated miles",style: Styles.headLineStyle2,),
          Gap(Applayout.getWidht(20)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: Applayout.getWidht(15), ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getWidht(18)),
              color: Colors.grey.shade200,
              boxShadow: [BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
              ), ]
            ),
            child: Column(
              children: [
                Text("192802", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600, color: Styles.textColor),),
                Gap(Applayout.getWidht(15)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("miles accroued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("11 jun 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Gap(Applayout.getWidht(4)),
                Divider(color: Colors.grey.shade300,),
                Gap(Applayout.getWidht(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor:  false),
                    Gap(Applayout.getWidht(15)),
                    AppColumnLayout(firstText: "Airline co", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor:  false),

                  ],
                ),
                Gap(Applayout.getWidht(4)),
                const AppLayoutBuilderWidget(sections: 12, isColor:false),
                Gap(Applayout.getWidht(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor:  false),
                    Gap(Applayout.getWidht(15)),
                    AppColumnLayout(firstText: "McDonal", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor:  false),

                  ],
                ),
                Gap(Applayout.getWidht(4)),
                const AppLayoutBuilderWidget(sections: 12, isColor:false),
                Gap(Applayout.getWidht(4)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start,isColor:  false),
                    Gap(Applayout.getWidht(15)),
                    AppColumnLayout(firstText: "DBestech", secondText: "Received from", alignment: CrossAxisAlignment.end,isColor:  false),

                  ],
                ), 


              ],
            ),
          ),
          Gap(Applayout.getWidht(25)),
          InkWell(
              onTap: (){
                print("your are tapped");
              },
              child: Center(child: Text("How to get more detail", style: Styles.textStyle.copyWith(color: Styles.primeryColor, fontWeight: FontWeight.w500),)))
        ],
      ),
    );
  }
}
