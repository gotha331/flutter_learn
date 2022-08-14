import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:date_format/date_format.dart';

class DateTimePickerPage extends StatefulWidget {
  const DateTimePickerPage({Key? key}) : super(key: key);

  @override
  State<DateTimePickerPage> createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  DateTime _nowDate = DateTime.now();

  void _showDatePick() {
    DatePicker.showDatePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2018, 3, 5),
      maxTime: DateTime(2022, 12, 30),
      onChanged: (date) {
        print('change $date');
      },
      onConfirm: (date) {
        print('confirm $date');
        setState(() {
          _nowDate = date;
        });
      },
      currentTime: _nowDate,
      locale: LocaleType.zh,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三方datetimepicker"),
      ),
      body: Center(
        child: Column(
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
              onTap: _showDatePick,
            )
          ],
        ),
      ),
    );
  }
}
