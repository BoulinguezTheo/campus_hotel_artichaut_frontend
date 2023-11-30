import 'package:campus_hotel_artichaut_frontend/views/reservation_widgets/bill_card.dart';
import 'package:flutter/material.dart';
import 'package:scaled_size/scaled_size.dart';
import '../../utils/constants.dart';
import 'package:campus_hotel_artichaut_frontend/views/reservation_widgets/date_picker.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  String selectedRoom = ConstantsApp.ROOMS_SUITE_DELUXE_TITLE;
  final List<String> roomTitles = [
    ConstantsApp.ROOMS_SUITE_DELUXE_TITLE,
    ConstantsApp.ROOMS_LUXE_CHAMBER_TITLE,
    ConstantsApp.ROOMS_STANDARD_CHAMBER_TITLE,
  ];
  int selectedRoomIndex = 0;
  String selectedNumberOfPersons = "1";
  DateTime beginDate = DateTime.now();
  DateTime endDate = DateTime.now();
  String roomImagePath = ConstantsApp.ROOMS_SUITE_DELUXE_PATH;

  void updateBeginDate(DateTime selectedDate) {
    setState(() {
      beginDate = selectedDate;
    });
  }

  void updateEndDate(DateTime selectedDate) {
    setState(() {
      endDate = selectedDate;
    });
  }

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

  String calculatePrice(String selectedRoom, String selectedNumberOfPersons) {
    int roomPrice = int.parse(getPriceForSelectedOption(selectedRoom));
    int numberOfPersons = int.parse(selectedNumberOfPersons);
    int totalPrice = roomPrice * numberOfPersons;
    return totalPrice.toString();
  }

  String calculateTotalPrice() {
    int priceRoomXPersons =
        int.parse(calculatePrice(selectedRoom, selectedNumberOfPersons));
    int numberOfDaysInStr =
        int.parse(calculateNumberOfDays(beginDate, endDate));
    int totalPrice = priceRoomXPersons * numberOfDaysInStr;
    return totalPrice.toString();
  }

  String calculateNumberOfDays(DateTime beginDate, DateTime endDate) {
    if (beginDate.isBefore(endDate)) {
      Duration difference = endDate.difference(beginDate);
      return difference.inDays.toString();
    } else {
      return '0';
    }
  }

  void updateRoomImagePath(String selectedRoom) {
    setState(() {
      switch (selectedRoom) {
        case ConstantsApp.ROOMS_SUITE_DELUXE_TITLE:
          roomImagePath = ConstantsApp.ROOMS_SUITE_DELUXE_PATH;
          break;
        case ConstantsApp.ROOMS_LUXE_CHAMBER_TITLE:
          roomImagePath = ConstantsApp.ROOMS_LUXE_CHAMBER_PATH;
          break;
        case ConstantsApp.ROOMS_STANDARD_CHAMBER_TITLE:
          roomImagePath = ConstantsApp.ROOMS_STANDARD_CHAMBER_PATH;
          break;
        default:
          break;
      }
    });
  }

  List<DropdownMenuItem<String>> buildDropdownRoomChoice(BuildContext context) {
    TextStyle dropdownTextStyle = TextStyle(
      fontFamily: Theme.of(context).textTheme.displayMedium?.fontFamily,
      color: Theme.of(context).textTheme.displayMedium?.color,
      fontSize: Theme.of(context).textTheme.displayMedium?.fontSize,
      fontWeight: Theme.of(context).textTheme.displayMedium?.fontWeight,
    );

    return roomTitles.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: dropdownTextStyle,
        ),
      );
    }).toList();
  }

  List<DropdownMenuItem<String>> buildDropdownNumberOfPersons(
      BuildContext context) {
    TextStyle dropdownTextStyle = TextStyle(
      fontFamily: Theme.of(context).textTheme.displayMedium?.fontFamily,
      color: Theme.of(context).textTheme.displayMedium?.color,
      fontSize: Theme.of(context).textTheme.displayMedium?.fontSize,
      fontWeight: Theme.of(context).textTheme.displayMedium?.fontWeight,
    );

    return ['1', '2', '3'].map((String value) {
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
        body: GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          setState(() {
            selectedRoomIndex = (selectedRoomIndex + 1) % roomTitles.length;
            selectedRoom = roomTitles[selectedRoomIndex];
            updateRoomImagePath(selectedRoom);
          });
        } else if (details.primaryVelocity! < 0) {
          setState(() {
            selectedRoomIndex =
                (selectedRoomIndex - 1 + roomTitles.length) % roomTitles.length;
            selectedRoom = roomTitles[selectedRoomIndex];
            updateRoomImagePath(selectedRoom);
          });
        }
      },
      child: SingleChildScrollView(
        child: SizedBox(
          height: 100.vh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(roomImagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.0.vh),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 1.0.vh),
                      padding: EdgeInsets.symmetric(horizontal: 2.0.vh),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: DropdownButton<String>(
                        value: selectedRoom,
                        items: buildDropdownRoomChoice(context),
                        onChanged: (String? value) {
                          if (value != null) {
                            updateRoomImagePath(value);
                            setState(() {
                              selectedRoom = value;
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1.vh),
                      child: Text(
                        getPriceForSelectedOption(selectedRoom) +
                            ConstantsApp.ROOMS_PRICE,
                        style: TextStyle(
                          fontFamily: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontFamily,
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontWeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.vh),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 2.vh),
                      padding: EdgeInsets.symmetric(horizontal: 2.vh),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardTheme.color,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: DropdownButton<String>(
                        value: selectedNumberOfPersons,
                        items: buildDropdownNumberOfPersons(context),
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              selectedNumberOfPersons = value;
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.vh),
                      child: Text(
                        calculatePrice(selectedRoom, selectedNumberOfPersons) +
                            " €",
                        style: TextStyle(
                          fontFamily: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontFamily,
                          color: Theme.of(context).colorScheme.surface,
                          fontSize: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.fontWeight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.2.vh),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: DatePicker(
                        ConstantsApp.BEGIN_DATE_LABEL,
                        onSelectDate: updateBeginDate,
                      ),
                    ),
                    Container(
                      child: DatePicker(
                        ConstantsApp.END_DATE_LABEL,
                        onSelectDate: updateEndDate,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ConstantsApp.ROOMS_SUITE_DELUXE_TEXT,
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.displayMedium?.fontFamily,
                    color: Theme.of(context).textTheme.titleMedium?.color,
                    fontSize:
                        Theme.of(context).textTheme.displayMedium?.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.bodyMedium?.fontWeight,
                  ),
                ),
              ),
              Card(
                color: Theme.of(context).colorScheme.secondary,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(1.8.vh),
                      child: BillCard(
                          title: selectedRoom,
                          numberOfDays:
                              calculateNumberOfDays(beginDate, endDate),
                          numberOfPersons: selectedNumberOfPersons,
                          totalPrice: calculateTotalPrice()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 2.vh),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: Container()),
                          Text(
                            "Total (TTC) : " + calculateTotalPrice() + " €",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.fontSize,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context)
                                  .textTheme
                                  .headlineLarge
                                  ?.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.vh),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Theme.of(context)
                          .cupertinoOverrideTheme
                          ?.primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 2.vh),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: Text(
                      ConstantsApp.CHECKOUT_LABEL,
                      style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.labelMedium?.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.labelMedium?.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.bodyMedium?.fontWeight,
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
