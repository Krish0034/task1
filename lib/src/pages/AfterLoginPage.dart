import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/src/util/CustomColors.dart';

import '../tabbar/CheckedBoxPage.dart';
import '../tabbar/DateTimePicker.dart';
import '../tabbar/ShowDailogBox.dart';

class AfterLoginPages extends StatefulWidget
{
  @override
  State<AfterLoginPages> createState() =>_AfterLoginPagesState();

}
class _AfterLoginPagesState extends State<AfterLoginPages>
{
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 3,
     child: Scaffold(
           appBar: AppBar(
             backgroundColor: CustomColors.c1,
             elevation: 0.1,
             bottom: TabBar(
               isScrollable: true,
               indicator: BoxDecoration(
                 border: Border(
                   bottom: BorderSide(
                     color: CustomColors.c6,
                     width: 2.0,
                   ),
                 ),
               ),
               tabs: [
                   Tab(child: Text("DateTimePicker",style:TextStyle(fontSize:20,letterSpacing: 1.0),),),
                   Tab(child: Text("ShowDailogBox",style:TextStyle(fontSize:20,letterSpacing: 1.0)),),
                   Tab(child: Text("CheckedBoxPage",style:TextStyle(fontSize:20,letterSpacing: 1.0),),),
               ],
               labelColor:CustomColors.c6,
               unselectedLabelColor: CustomColors.c14,
             ),
           ),
       body: TabBarView(
         children: [
            DateTimePicker(),
            ShowDailogBox(),
            CheckedBoxPage()
         ],
       ),

     ),
   );
  }

}