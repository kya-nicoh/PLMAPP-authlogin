import 'package:flutter/material.dart';

class ExpandedEvents extends StatelessWidget {
  const ExpandedEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int selectedEventIndex = -1;

  final List<Color> popupColors = [
    Colors.red.withOpacity(0.7),
    Colors.red.withOpacity(0.8),
    Colors.red.withOpacity(0.9),
    Colors.red.withOpacity(1.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Tracker'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue.shade50,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Events for the month of June',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildEventBox(Colors.blue.shade200, '13', 0),
                      _buildEventBox(Colors.blue.shade300, '14', 1),
                      _buildEventBox(Colors.blue.shade400, '15', 2),
                      _buildEventBox(Colors.blue.shade500, '16', 3),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Expanded(
                    child: _buildEventTimeline('1pm', 'Mass', 'Location 1'),
                  ),
                  const Divider(color: Colors.grey),
                  Expanded(
                    child:
                        _buildEventTimeline('2pm', 'Enrollment', 'Location 2'),
                  ),
                  const Divider(color: Colors.grey),
                  Expanded(
                    child: _buildEventTimeline('3pm', 'Meeting', 'Location 3'),
                  ),
                  const Divider(color: Colors.grey),
                  Expanded(
                    child: _buildEventTimeline('4pm', 'Workshop', 'Location 4'),
                  ),
                  const Divider(color: Colors.grey),
                  Expanded(
                    child:
                        _buildEventTimeline('5pm', 'Conference', 'Location 5'),
                  ),
                  // Add more events as needed
                ],
              ),
            ),
          ),
          selectedEventIndex != -1
              ? Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: popupColors[selectedEventIndex],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedEventIndex = -1;
                                  });
                                },
                              ),
                            ],
                          ),
                          const Text(
                            'Article Title',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          Image.network(
                            'https://example.com/article-image.jpg',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Article Content',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          TextButton(
                            onPressed: () {
                              // TODO: Implement redirection to URL
                            },
                            child: const Text(
                              'Read More',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }

  Widget _buildEventBox(Color color, String date, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEventIndex = index;
        });
      },
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            date,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildEventTimeline(String time, String event, String location) {
    return ListTile(
      title: Row(
        children: [
          Text(
            time,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20.0),
          Text(
            event,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 20.0),
          Text(
            location,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
