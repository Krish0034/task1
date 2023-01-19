import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/src/model/CheckBoxState.dart';
import 'package:task1/src/util/CustomColors.dart';


class CheckedBoxPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>_CheckedBoxPageState();
}
class _CheckedBoxPageState extends State<CheckedBoxPage>
{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          padding: EdgeInsets.all(12),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: CustomColors.c3,
                border: Border(bottom: BorderSide(width: 2,color: CustomColors.c6))
              ),
              child: TextButton(
                onPressed:() {
                  setState(() {
                    // Navigator.push(context,MaterialPageRoute(builder: (context) => NotificationLists(),));
                  });
                },
                child: Text('Notifications',style: TextStyle(color: CustomColors.c1,fontSize: 22,letterSpacing: 1.0),),
              ),
            ),
            ...notifications.map(buldingCheckedBox).toList(),
          ],
        ),
      );
  }
  Widget buldingCheckedBox(CheckBoxState checkbox )=>  CheckboxListTile(
      checkColor: CustomColors.c1,
      controlAffinity:ListTileControlAffinity.leading ,
      activeColor: CustomColors.c15,
      value: checkbox.value,
      title: Text(
          checkbox.title,
          style: TextStyle(
            color: CustomColors.c6,
            fontSize: 25
       ),
      ),
      onChanged: (value)=> setState(() {
        print(value);
        checkbox.value=value!;
      })
  );

}