import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  // var now = DateTime.now();
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 12, minute: 00);

  _showDatePicker() async {
    // showDatePicker(
    //   context: context,
    //   initialDate: _nowDate,
    //   firstDate: DateTime(1980),
    //   lastDate: DateTime(2100),
    // ).then((result) {
    //   print(result);
    // });

    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      locale: Locale('zh'),
    );

    print(result);
    if (result == null) {
      return;
    }

    setState(() {
      _nowDate = result;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );

    if (result == null) {
      return;
    }
    setState(() {
      _nowTime = result;
    });
  }

  @override
  void initState() {
    super.initState();
    //   print(now);
    //   print(now.microsecondsSinceEpoch);
    //   print(DateTime.fromMicrosecondsSinceEpoch(1660507406334745));

    //   // 2022-08-15 04:03:26.334745
    //   print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd, '日']));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(formatDate(_nowDate, [yyyy, '年', mm, '月', dd, '日'])),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDatePicker,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_nowTime.format(context)),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          )
        ],
      ),
    );
  }
}
