import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/src/util/CustomColors.dart';

class ShowDailogBox extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _ShowDailogBoxState();
}
class _ShowDailogBoxState extends State<ShowDailogBox>
{
  String data='';
  late TextEditingController controller;
  @override
  void initState()
  {
    super.initState();
    controller=TextEditingController();
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return  Column(
     children: [
       SizedBox(height: 10,),
       Container(
         width: 200,
         height: 100,
         child: ElevatedButton(
           style:ElevatedButton.styleFrom(
             elevation: 0,
             backgroundColor: CustomColors.c2
           ),
           onPressed: ()async {
             final data1= await openDialog();
             if(data1== null) return ;
             setState(() {
               data=data1;
             });
             print(data);
           },
           child: Text('ShowDailog',style:TextStyle(
             color: CustomColors.c5,
             fontSize: 25
           ),),

         )
       ),
       SizedBox(height: 10,),
       Container(
         height: 200,
         width: 200,
         color: CustomColors.c5,
         child: Text(data,style: TextStyle(
           fontSize: 25
         ),),
       )
     ],
   );

  }

  Future openDialog() => showDialog(context: context,
      builder: (context)=>AlertDialog(
        title: const Text('Type Data'),
        content: TextField(
          autofocus: true,
            decoration: InputDecoration(
              hintText: 'Enter Data',
            ),
          controller: controller,
          ),
        actions: [
          TextButton(
            child: Text("Cencel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Submit"),
            onPressed: () {
             Navigator.of(context).pop(controller.text);
            },
          ),
        ],
      )
  );
}

