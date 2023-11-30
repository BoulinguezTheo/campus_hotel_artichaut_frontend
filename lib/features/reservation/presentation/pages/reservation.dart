import 'package:campus_hotel_artichaut_frontend/features/room_category_list/data/models/room_type.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';

import '../../../../utils/constants.dart';

class MyReservation extends StatefulWidget {
  final RoomTypeModel roomType;
  const MyReservation({super.key, required this.roomType});

  @override
  State<MyReservation> createState() => _MyReservationState();
}

class _MyReservationState extends State<MyReservation> {
  String _dropdownValue = "1";

  List<int> dropdownValueList = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
            child: Image.asset(ConstantsApp.ROOMS_SUITE_DELUXE_PATH),
          ),
          Row(
            children: [
              DropdownButton(
                  icon: const Icon(Icons.people),
                  value: _dropdownValue,
                  items: const [
                    DropdownMenuItem(child: Text('1'), value: "1"),
                    DropdownMenuItem(child: Text('2'), value: "2"),
                    DropdownMenuItem(child: Text('3'), value: "3"),
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropdownValue = newValue!;
                    });
                  }),
              SizedBox(
                width: 5.vw,
              ),
              Text('${widget.roomType.price}${ConstantsApp.ROOMS_PRICE}'),
            ],
          ),
          SizedBox(
            height: 2.vh,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 45.vw,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Date d'arrivée",
                      filled: true,
                      prefixIcon: Icon(Icons.calendar_today),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color.fromRGBO(45, 73, 76, 1))),
                    ),
                    readOnly: true,
                  ),
                ),
                SizedBox(
                  width: 2.vw,
                ),
                SizedBox(
                  width: 45.vw,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Date de départ",
                      filled: true,
                      prefixIcon: Icon(Icons.calendar_today),
                      enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color.fromRGBO(45, 73, 76, 1))),
                    ),
                    readOnly: true,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2500),
    );
  }
}
