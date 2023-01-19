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
  late TextEditingController controller1;
  @override
  void initState()
  {
    super.initState();
    controller1=TextEditingController();
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   return  Column(
     children: [
       SizedBox(height: 10,),
       Container(
         width: 200,
         height: 70,
         child: ElevatedButton(
           style:ElevatedButton.styleFrom(
             fixedSize: const Size(200, 80),
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50)),
             elevation: 2,
             backgroundColor: CustomColors.c10
           ),
           onPressed: ()async {
             final data1= await openDialog();
             if(data1== null) return null;
             setState(() {
               data=data1;
             });
             print(data);
           },
           child: Text('ShowDailog',style:TextStyle(
             color: CustomColors.c11,
             fontSize: 25
           ),),

         )
       ),
       SizedBox(height: 20,),
       Container(
         height: 200,
         width: MediaQuery.of(context).size.width,
         color: CustomColors.c5,
         child: Text('Data:-> '+data,
           style: TextStyle(
           color: CustomColors.c6,
           fontSize: 25
         ),),
       )
     ],
   );

  }

  Future openDialog() => showDialog(context: context,
      builder: (context)=>AlertDialog(
        title:Text('Type Data',
            style: TextStyle(
              color: CustomColors.c6,
              fontSize: 20,
              backgroundColor: CustomColors.c1,
            ),
        ),
        content: TextField(
          autofocus: true,
            decoration: InputDecoration(
              hintText: 'Enter Data',
            ),
          controller: controller1,
          ),
        actions: [
          TextButton(
            child: Text("Cencel",
              style: TextStyle(
                  color: CustomColors.c11,
                  fontSize: 15,
                  letterSpacing: 1.0
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text("Submit",
              style: TextStyle(
                color: CustomColors.c12,
                fontSize: 15,
                letterSpacing: 1.0
              ),
            ),
            onPressed: () {
             Navigator.of(context).pop(controller1.text);
            },
          ),
        ],
      )
  );
}

