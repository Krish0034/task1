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
  final notifications=[
    CheckBoxState(title: 'Client'),
    CheckBoxState(title: 'Messages'),
    CheckBoxState(title: 'Groups'),
    CheckBoxState(title: 'Calls'),
    CheckBoxState(title: 'Events'),
  ];



  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          padding: EdgeInsets.all(12),
          children: [
            ...notifications.map(buldingCheckedBox).toList(),
          ],
        ),
      );
  }
  Widget buldingCheckedBox(CheckBoxState checkbox )=>  CheckboxListTile(
      controlAffinity:ListTileControlAffinity.leading ,
      activeColor: CustomColors.c5,
      value: checkbox.value,
      title: Text(checkbox.title),
      onChanged: (value)=> setState(() {
        checkbox.value=value!;
      })
  );

}