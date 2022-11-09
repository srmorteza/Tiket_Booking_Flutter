import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../widgets/column_layout.dart';

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
                )
              ],
            ),
          )
          
        ],
        )
        ]
      ),
    );
  }
}
