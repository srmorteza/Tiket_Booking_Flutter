import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor ,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                       Text("Good morning" , style: Styles.headLineStyle3,),
                       const Gap(5),
                       Text("Book tickets", style: Styles.headLineStyle1,),
                     ],

                   ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/img_1.png"),
                          )),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xfffbc205),),
                      Text("search", style: Styles.headLineStyle4,),

                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcomming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          print("you ar taped");
                        },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primeryColor),)),
                  ],
                )
                    
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleticket) => TicketView(ticket: singleticket)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2,),
                InkWell(
                    onTap: (){
                      print("you ar taped");
                    },
                    child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primeryColor),)),
              ],
            ),
          ),
          const Gap(15),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children:
              hotelList.map((singlehotel) => HotelScreen(hotel: singlehotel)).toList() ,

            ),
          ),




        ],
      ),
    );
  }
}
