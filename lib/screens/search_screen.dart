import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../widgets/double_text_widget.dart';



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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Applayout.getHeight(50)),
              color: const Color(0xfff4f6fd),

            ),
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
                  const Center(child: Text("Airline tickets")),

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
                   const Center(child: Text("Hotels")),

                 ),
               )
              ],
            ),
          ),
          Gap(Applayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(Applayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(Applayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(vertical: Applayout.getWidht(18),horizontal: Applayout.getWidht(12)),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Applayout.getWidht(10)),
            color: Color(0xd91130ce),
            ),
            child:  Center(child: Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white),)),

            ),
          Gap(Applayout.getHeight(40)),
          const AppDoubleTextWidget(bigtext: "Upcoming Flights", smalltext: "View all",),
          Gap(Applayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height:Applayout.getHeight(425) ,
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: Applayout.getHeight(15),vertical: Applayout.getWidht(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Applayout.getHeight(20) ,),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,

                    ),

                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height:Applayout.getHeight(100) ,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Applayout.getHeight(12) ,),
                        image: DecorationImage(
                          image: AssetImage(
                        "assets/images/sit.jpg"
                          )
                      ),
                    )
                    ),
                    Gap(Applayout.getHeight(12)),
                    Text("20% discount on  the early booking ...", style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: Applayout.getHeight(210),
                        width: size.width*0.44,
                        decoration: BoxDecoration(
                            color: Color(0xff3abbb8),
                            borderRadius: BorderRadius.circular(Applayout.getHeight(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(15), horizontal: Applayout.getWidht(16)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nforsurvey ",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold ,color: Colors.white),),
                            Gap(Applayout.getHeight(10)),
                            Text("take the survey about our services ...",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500 ,color: Colors.white, fontSize: 18),),
                          ],
                        ),


                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(Applayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18,color: Color(0xff189999)),
                          color: Colors.transparent,

                        ),
                      ),)

                    ],
                  ),
                  Gap(Applayout.getHeight(15)),
                  Container(
                    height:Applayout.getHeight(210) ,
                    width: size.width*0.44,
                    padding: EdgeInsets.symmetric(vertical: Applayout.getHeight(15), horizontal: Applayout.getWidht(15)),
                    decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        borderRadius: BorderRadius.circular(Applayout.getHeight(15 ) ,),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1,

                          ),


                        ]
                    ),
                    child: Column(
                      children: [
                        Text('Take Love', style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(Applayout.getHeight(5)),
                        RichText(
                            text:const TextSpan(
                              children: [
                                TextSpan(
                                  text: '😍',
                                  style: TextStyle(fontSize:30),
                                ),
                                TextSpan(
                                  text: '😘',
                                  style: TextStyle(fontSize: 45),
                                ),
                                TextSpan(
                                  text: '🥰',
                                  style: TextStyle(fontSize: 30),
                                ),

                              ],

                        ))


                      ],
                    ),
                  )
                ],
              )

            ],
          )


        ],

    ),

    );
  }
}
