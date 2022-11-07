import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/thick_container.dart';
import 'package:flutter/src/widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final  Map<String,dynamic> ticket ;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                            children: [SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context,
                                      BoxConstraints constraints) {
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                              (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                            ),
                                          )),
                                    );
                                  },
                                )),
                              Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded , color: Colors.white,),)),
                            ],
                          )),
                      ThickContainer(),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text(ticket['flying_time'],style: Styles.headLineStyle4.copyWith(color: Colors.white),),

                      SizedBox(

                        width: 100,
                        child: Text(ticket['to']['name'], style: Styles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children:  [
                  SizedBox(

                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),

                        )
                      ),
                    ),
                  ),
                 Expanded(child: LayoutBuilder(
                     builder: ( BuildContext context ,BoxConstraints constraints){
                       return Flex(
                         direction: Axis.horizontal,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         mainAxisSize: MainAxisSize.max,
                         children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                           width: 5,
                           height: 1,
                           child: DecoratedBox(
                             decoration: BoxDecoration(
                               color: Colors.white,
                             ),
                           ),
                         )),
                       );

                 })),
                  SizedBox(

                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),

                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 10,right: 16, bottom: 10),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(21) , bottomLeft: Radius.circular(21)),
                ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ticket['date'] , style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        Text("DATE" , style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ],
                    ) ,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                          Text("Departure Time" , style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                        ],
                      ) ,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(ticket['number'].toString() , style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                        Text("Number" , style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      ],
                    ) ,
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
