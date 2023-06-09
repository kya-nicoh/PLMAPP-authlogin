import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';


class Admission extends StatelessWidget {
  const Admission({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Tracker',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: EventTracker(),
    );
  }
}

class EventTracker extends StatefulWidget {
  @override
  _EventTrackerState createState() => _EventTrackerState();
}

class _EventTrackerState extends State<EventTracker> {
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Event Tracker'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0), // Add whitespace
          Container(
            color: Colors.red.shade50,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Academic Events',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                TableCalendar(
                  firstDay: DateTime(DateTime.now().year - 1),
                  lastDay: DateTime(DateTime.now().year + 1),
                  focusedDay: focusedDay,
                  calendarFormat: calendarFormat,
                  onDaySelected: _onDaySelected,
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoPage(
                              imageUrl: 'https://example.com/how-to-apply.jpg',
                            ),
                          ),
                        );
                      },
                      child: Text('How to Apply'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoPage(
                              imageUrl: 'https://example.com/details.jpg',
                            ),
                          ),
                        );
                      },
                      child: Text('Details'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoPage(
                              imageUrl: 'https://example.com/contact-us.jpg',
                            ),
                          ),
                        );
                      },
                      child: Text('Contact Us'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PhotoPage extends StatelessWidget {
  final String imageUrl;

  const PhotoPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Image.network(
          imageUrl,
          width: 200.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
