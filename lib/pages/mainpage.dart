import 'package:flutter/material.dart';
import 'package:hms_mobile_app/widgets/bookingCard.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final List<Map> _bookings = [
    {
      "guest_name": "Alice Johnson",
      "room_number": 101,
      "check_in": "01 May 2025",
      "check_out": "05 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Bob Smith",
      "room_number": 102,
      "check_in": "03 May 2025",
      "check_out": "06 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Clara Davis",
      "room_number": 103,
      "check_in": "02 May 2025",
      "check_out": "07 May 2025",
      "booking_status": 3,
    },
    {
      "guest_name": "David Wilson",
      "room_number": 104,
      "check_in": "04 May 2025",
      "check_out": "08 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Ella Martinez",
      "room_number": 105,
      "check_in": "05 May 2025",
      "check_out": "10 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Frank Brown",
      "room_number": 106,
      "check_in": "06 May 2025",
      "check_out": "11 May 2025",
      "booking_status": 3,
    },
    {
      "guest_name": "Grace Lee",
      "room_number": 107,
      "check_in": "07 May 2025",
      "check_out": "12 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Henry Clark",
      "room_number": 108,
      "check_in": "08 May 2025",
      "check_out": "13 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Ivy Walker",
      "room_number": 109,
      "check_in": "09 May 2025",
      "check_out": "14 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Jack Hall",
      "room_number": 110,
      "check_in": "10 May 2025",
      "check_out": "15 May 2025",
      "booking_status": 3,
    },
    {
      "guest_name": "Karen Young",
      "room_number": 111,
      "check_in": "11 May 2025",
      "check_out": "16 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Leo King",
      "room_number": 112,
      "check_in": "12 May 2025",
      "check_out": "17 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Mia Scott",
      "room_number": 113,
      "check_in": "13 May 2025",
      "check_out": "18 May 2025",
      "booking_status": 3,
    },
    {
      "guest_name": "Noah Adams",
      "room_number": 9999,
      "check_in": "14 May 2025",
      "check_out": "19 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Olivia Perez",
      "room_number": 115,
      "check_in": "15 May 2025",
      "check_out": "20 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Paul Baker",
      "room_number": 116,
      "check_in": "16 May 2025",
      "check_out": "21 May 2025",
      "booking_status": 3,
    },
    {
      "guest_name": "Quinn Rogers",
      "room_number": 117,
      "check_in": "17 May 2025",
      "check_out": "22 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Rachel Foster",
      "room_number": 998,
      "check_in": "18 May 2025",
      "check_out": "23 May 2025",
      "booking_status": 2,
    },
    {
      "guest_name": "Sam Green",
      "room_number": 119,
      "check_in": "19 May 2025",
      "check_out": "24 May 2025",
      "booking_status": 1,
    },
    {
      "guest_name": "Tina Brooks",
      "room_number": 120,
      "check_in": "20 May 2025",
      "check_out": "25 May 2025",
      "booking_status": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        shadowColor: colorScheme.primary,
        title: Text('Booking List'),
        centerTitle: true,
        foregroundColor: colorScheme.onSecondary,
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              print('Settings icon pressed');
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF127852),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Confirmed', style: TextStyle(color: colorScheme.onPrimary),),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFF8B8588),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Pending'),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xFFC40233),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Canceled', style: TextStyle(color: colorScheme.onPrimary),),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: colorScheme.surface,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: colorScheme.primary),
              child: Row(
                children: [
                  Expanded(flex: 1, child: Icon(Icons.person_4_outlined, size: 50, color: colorScheme.onPrimary)),
                  SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Michael Oliver',
                      style: TextStyle(fontSize: 30, color: colorScheme.onPrimary),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_month_outlined,
                color: colorScheme.onSurface,
              ),
              title: Text(
                'Bookings',
                style: TextStyle(color: colorScheme.onSurface),
              ),
              onTap: () {
                print('Bookings icon pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.bed_outlined, color: colorScheme.onSurface),
              title: Text(
                'Rooms',
                style: TextStyle(color: colorScheme.onSurface),
              ),
              onTap: () {
                print('Rooms icon pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.person_outline, color: colorScheme.onSurface),
              title: Text(
                'Guests',
                style: TextStyle(color: colorScheme.onSurface),
              ),
              onTap: () {
                print('Guests icon pressed');
              },
            ),
            ListTile(
              leading: Icon(Icons.group_outlined, color: colorScheme.onSurface),
              title: Text(
                'Staffs',
                style: TextStyle(color: colorScheme.onSurface),
              ),
              onTap: () {
                print('Staffs icon pressed');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings_outlined,
                color: colorScheme.onSurface,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: colorScheme.onSurface),
              ),
              onTap: () {
                print('Settings icon pressed');
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisExtent: 100,
              ),
              itemCount: _bookings.length,
              itemBuilder: (context, index) {
                final booking = _bookings[index];
                return bookingCard(
                  guestName: booking["guest_name"],
                  roomNumber: booking["room_number"],
                  checkIn: booking["check_in"],
                  checkOut: booking["check_out"],
                  bookingStatus: booking["booking_status"],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
