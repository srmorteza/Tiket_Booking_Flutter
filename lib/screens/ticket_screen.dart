import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/column_layout.dart';
import 'package:barcode_widget/barcode_widget.dart';




class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20), vertical: Applayout.getWidht(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Text("Tickets", style: Styles.headLineStyle1,),
          Gap(Applayout.getHeight(25)),
          const AppTicketTabs(firsttab: "Upcoming", secondtab: "Previos"),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.only(left:Applayout.getHeight(16) ),
            child: TicketView(ticket: ticketList[0],isColor: true),
          ),
          SizedBox(height: 1,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            margin: EdgeInsets.only(right: Applayout.getHeight(16) ,left:Applayout.getWidht(16)),
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "Flutter DB",secondText: "passenger",alignment: CrossAxisAlignment.start,isColor:false),
                    AppColumnLayout(firstText: "5221 364869",secondText: "passport",alignment: CrossAxisAlignment.end,isColor:false),


                  ],
                ),
                Gap(Applayout.getHeight(20)),
                const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "0055 52525 744554",secondText: "number of E-ticket",alignment: CrossAxisAlignment.start,isColor:false),
                    AppColumnLayout(firstText: "b2sg28",secondText: "booking code",alignment: CrossAxisAlignment.end,isColor:false),


                  ],
                ),
                const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                Gap(Applayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/visa.png", scale: 11,),
                            Text("00085852",style: Styles.headLineStyle3,),
                          ],
                        ),
                        Gap(5),
                        Text("payment method", style: Styles.headLineStyle4,),
                      ],
                    ),
                    const AppColumnLayout(firstText: "\$249.99",secondText: "price",alignment: CrossAxisAlignment.end,isColor:false),

                  ],
                ),


              ],
            ),
          ),
          SizedBox(height: 1,),

          Container(

            margin: EdgeInsets.only(left: Applayout.getHeight(15),right: Applayout.getHeight(15)),
            padding: EdgeInsets.only(top: Applayout.getHeight(15),bottom: Applayout.getHeight(15)),
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Applayout.getHeight(21)), bottomRight: Radius.circular(21),)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Applayout.getHeight(15)),
                child: BarcodeWidget(barcode: Barcode.code128(),
                  data: 'https://github.com/srmorteza',
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,

                ),
              ),
            ),
          ),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.only(left:Applayout.getHeight(16) ),
            child: TicketView(ticket: ticketList[0]),
          ),

          
        ],
        ),
          Positioned(
            left: Applayout.getHeight(22),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 4,
                  backgroundColor: Styles.textColor,

              ),
            ),
          ),
          Positioned(
            right: Applayout.getHeight(22),
            top: Applayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),

              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,

              ),
            ),
          ),

        ]
      ),
    );
  }
}
