import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigtext;
  final String smalltext;
  const AppDoubleTextWidget({Key? key, required this.bigtext , required this.smalltext }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigtext, style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("you ar taped");
            },
            child: Text(smalltext, style: Styles.textStyle.copyWith(color: Styles.primeryColor),)),
      ],
    );
  }
}
