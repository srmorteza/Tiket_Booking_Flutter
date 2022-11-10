import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../widgets/column_layout.dart';
import '../widgets/layout_builder_widget.dart';
import '../widgets/thick_container.dart';
import 'package:flutter/src/widgets/layout_builder.dart';

class TicketView extends StatelessWidget {
  final  Map<String,dynamic> ticket ;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: Applayout.getHeight(GetPlatform.isAndroid==true ?153:169),
      child: Container(
        margin: EdgeInsets.only(right: Applayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration:  BoxDecoration(
                color: isColor==null ? const Color(0xff526799): Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Applayout.getHeight(21)),
                    topRight: Radius.circular(Applayout.getHeight(21))),
              ),
              padding:  EdgeInsets.all(Applayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor==null ? Styles.headLineStyle3.copyWith(color: Colors.white) :
                        Styles.headLineStyle3 ,
                      ),
                      const Spacer(),
                      ThickContainer(isColor:true),
                      Expanded(
                          child: Stack(
                            children: [SizedBox(
                                height: Applayout.getHeight(24),
                                child:
                                AppLayoutBuilderWidget(sections: 6),),
                                Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded , color: isColor == null ? Colors.white: Color(0xff8accf7),),)),

                        ],
                          )),
                      ThickContainer(isColor:true),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                        isColor == null ?Styles.headLineStyle3.copyWith(color: Colors.white) :  Styles.headLineStyle3 ,
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: Applayout.getWidht(100),
                        child: Text(ticket['from']['name'], style: isColor ==null ? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),
                      ),
                      Text(ticket['flying_time'],style:isColor ==null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),

                      SizedBox(
                        width: Applayout.getWidht(100),
                        child: Text(ticket['to']['name'], style:isColor ==null ? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
              color: isColor ==null ?Styles.orangeColor: Colors.white,
              child: Row(
                children:  [
                  SizedBox(

                    height: Applayout.getHeight(20),
                    width: Applayout.getWidht(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isColor ==null ?Colors.white:Colors.grey.shade200,
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
                         children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>  SizedBox(
                           width: 5,
                           height: 1,
                           child: DecoratedBox(
                             decoration: BoxDecoration(
                               color: isColor == null ? Colors.white:Colors.grey.shade300,
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
                          color: isColor == null ? Colors.white:Colors.grey.shade300,
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
              padding: const EdgeInsets.only(left: 16, top: 10,right: 16, bottom: 8),
              decoration: BoxDecoration(
                color: isColor == null ? Styles.orangeColor :Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(isColor==null?21:0) , bottomLeft: Radius.circular(isColor==null?21:0)),
                ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "DATE",secondText:ticket['date'] ,alignment:CrossAxisAlignment.start ,isColor: isColor,),
                      AppColumnLayout(firstText: ticket['departure_time'],secondText:"Departure Time"  ,alignment: CrossAxisAlignment.center,isColor: isColor,),
                      AppColumnLayout(firstText: ticket['number'].toString(),secondText:"Number",alignment:CrossAxisAlignment.end, isColor: isColor,),


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
