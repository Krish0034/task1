import 'package:flutter/material.dart';
import 'package:task1/src/util/CustomColors.dart';

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  TimeOfDay _timeOfDay = TimeOfDay.now();
  DateTime _dateTime=DateTime.now();
  DateTime _firstDate=DateTime(1990);
  DateTime _lastDate=DateTime(2090);
  // show date picker method
  void _showDatePicker()
  {
    showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: _firstDate,
        lastDate: _lastDate
    ).then((value) =>{
      setState((){
        _dateTime = value!;
    })
    } );
  }


  // show time picker method
  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // display the chosen time
            Text(
              ('${_timeOfDay.hour}:${_timeOfDay.minute}:${_dateTime.second}'),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _showTimePicker,
              child:Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('PICK DATE',
                    style: TextStyle(color: CustomColors.c6, fontSize: 30)),
              ),
              color: CustomColors.c13,
            ),
            Text(
              ("${_dateTime.year}/${_dateTime.month}/${_dateTime.day}"),
              style: TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _showDatePicker,
              child:Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('PICK DATE',
                    style: TextStyle(color: CustomColors.c6, fontSize: 30)),
              ),
              color: CustomColors.c13,
            ),


          ],
        ),
      ),
    );
  }
}