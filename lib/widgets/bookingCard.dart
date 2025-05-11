import 'package:flutter/material.dart';

class bookingCard extends StatelessWidget {
  final String guestName;
  final int roomNumber;
  final String checkIn;
  final String checkOut;
  final int bookingStatus;

  const bookingCard({
    Key? key,
    required this.guestName,
    required this.roomNumber,
    required this.checkIn,
    required this.checkOut,
    required this.bookingStatus,
  }) : super(key: key);

  Color getStatusColor(int status) {
    switch (status) {
      case 1:
        return Color(0xFF127852);
      case 2:
        return Color(0xFF8B8588);
      case 3:
        return Color(0xFFC40233);
      default:
        return Colors.white;
    }
  }

  Color getFontColor(int status) {
    switch (status) {
      case 1:
        return Color(0xFFF3F3E0);
      case 2:
        return Colors.black;
      case 3:
        return Color(0xFFF3F3E0);
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 8,
      shadowColor: getStatusColor(bookingStatus),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(guestName, style: TextStyle(fontWeight: FontWeight.bold),), Text('$checkIn - $checkOut')],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: getStatusColor(bookingStatus),
              ),
              width: double.infinity,
              // color: Colors.blue,
              child: Center(
                child: Text(
                  '$roomNumber',
                  style: TextStyle(color: getFontColor(bookingStatus)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
