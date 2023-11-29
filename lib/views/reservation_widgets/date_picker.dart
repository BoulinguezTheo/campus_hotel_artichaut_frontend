import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime selectedBeginDate = DateTime.now();
  late DateTime selectedEndDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "${selectedBeginDate.year} - ${selectedBeginDate.month} - ${selectedBeginDate.day}",
          ),
          ElevatedButton(
            onPressed: () async {
              final DateTime? dateTimeBegin = await showDatePicker(
                context: context,
                initialDate: selectedBeginDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (dateTimeBegin != null){
                setState(() {
                  selectedBeginDate = dateTimeBegin;
                });
              }
            },
            child: Text(DateFormat('yyyy-MM-dd').format(selectedBeginDate)),
          ),
        ],
      ),
    );
  }
}
