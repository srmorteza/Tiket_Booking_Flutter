import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon ;
  final String text;
  const AppIconText({Key? key, required this.icon , required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   Container(
      padding: EdgeInsets.symmetric(vertical: Applayout.getWidht(12),horizontal: Applayout.getWidht(12)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Applayout.getWidht(10)),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xffbfc2df),),
          Gap(Applayout.getWidht(15)),
          Text(text, style: Styles.textStyle,),

        ],
      ),
    );
  }
}
