import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  final String dateLabel;
  final Function(DateTime) onSelectDate;

  const DatePicker(this.dateLabel, {required this.onSelectDate, Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  late DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.dateLabel,
          ),
          ElevatedButton(
            onPressed: () async {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (pickedDate != null) {
                setState(() {
                  selectedDate = pickedDate;
                });

                // Appeler la fonction pour mettre à jour la date sélectionnée dans le widget parent
                widget.onSelectDate(selectedDate);
              }
            },
            child: Text(DateFormat('yyyy-MM-dd').format(selectedDate)),
          ),
        ],
      ),
    );
  }
}
