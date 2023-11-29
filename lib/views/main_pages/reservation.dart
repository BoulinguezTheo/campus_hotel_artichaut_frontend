import 'package:campus_hotel_artichaut_frontend/views/reservation_widgets/date_picker.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';
import '../../utils/constants.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  String selectedItem = ConstantsApp.ROOMS_SUITE_DELUXE_TITLE;

  String getPriceForSelectedOption(String selectedOption) {
    switch (selectedOption) {
      case ConstantsApp.ROOMS_SUITE_DELUXE_TITLE:
        return "280";
      case ConstantsApp.ROOMS_LUXE_CHAMBER_TITLE:
        return "140";
      case ConstantsApp.ROOMS_STANDARD_CHAMBER_TITLE:
        return "70";
      default:
        return '';
    }
  }

  List<DropdownMenuItem<String>> buildDropdownMenuItems(BuildContext context) {
    TextStyle dropdownTextStyle = TextStyle(
      fontFamily: Theme.of(context).textTheme.displayMedium?.fontFamily,
      color: Theme.of(context).textTheme.displayMedium?.color,
      fontSize: Theme.of(context).textTheme.displayMedium?.fontSize,
      fontWeight: Theme.of(context).textTheme.displayMedium?.fontWeight,
    );

    return [
      ConstantsApp.ROOMS_SUITE_DELUXE_TITLE,
      ConstantsApp.ROOMS_LUXE_CHAMBER_TITLE,
      ConstantsApp.ROOMS_STANDARD_CHAMBER_TITLE,
    ].map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: dropdownTextStyle,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        height: 35.vh,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ConstantsApp.ROOMS_SUITE_DELUXE_PATH),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardTheme.color,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButton<String>(
                      value: selectedItem,
                      items: buildDropdownMenuItems(context),
                      onChanged: (String? value) {
                        if (value != null) {
                          setState(() {
                            selectedItem = value;
                          });
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Text(
                      getPriceForSelectedOption(selectedItem) + ConstantsApp.ROOMS_PRICE,
                      style: TextStyle(
                        fontFamily: Theme.of(context).textTheme.displayMedium?.fontFamily,
                        color: Theme.of(context).colorScheme.surface,
                        fontSize: Theme.of(context).textTheme.displayMedium?.fontSize,
                        fontWeight: Theme.of(context).textTheme.displayMedium?.fontWeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: DatePicker(),
                    ),
                    Container(
                      child: DatePicker(),
                    ),
                  ],
                ) // DatePicker(),
            )
          ],
        ),
      ),
    );
  }
}
