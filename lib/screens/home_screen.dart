import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xffeeedf2),
       body: ListView(
         children: [
           Container(
             child: Column(
               children: [
                 Row(
                   children: [
                     Text("Good morning"),
                     Image.asset("assets/images/img_1.png"),
                     
                   ],

                 )
               ],
             ),
           )
         ],
       ),
    );
  }
}
