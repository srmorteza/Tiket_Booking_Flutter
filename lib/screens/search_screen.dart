import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';



class SearchScreen extends StatelessWidget {

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context) ;
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(20), vertical: Applayout.getHeight(20)),
        children: [
          Gap(Applayout.getHeight(40)),
          Text("What are\nyou looking for? ", style: Styles.headLineStyle1.copyWith(fontSize:  Applayout.getWidht(35)),),
          Gap(Applayout.getHeight(20)),
          Container(
            padding: const EdgeInsets.all(3.5),
            child: Row(
              children: [
                Container(
                  width: size.width*0.44,
                  padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(Applayout.getHeight(50))),
                    color:  Colors.white,
                  ),
                  child:
                  Center(child: Text("ariline tickets")),

                ),
               FittedBox(
                 child:  Container(
                   width: size.width*0.44,
                   padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(7)),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.horizontal(right: Radius.circular(Applayout.getHeight(50))),
                     color:  Colors.transparent,
                   ),
                   child:
                   Center(child: Text("Hotels")),

                 ),
               )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getHeight(50)),
              color: const Color(0xfff4f6fd),

            ),
          )

        ],

    ),

    );
  }
}
