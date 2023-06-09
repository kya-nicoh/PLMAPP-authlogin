import 'package:flutter/material.dart';
import '../pages/contact.dart';
import '../pages/program_courses.dart';
import '../pages/academic_calendar.dart';
import '../pages/missionandvision.dart';
void main() => runApp(AboutPLMApp());

class AboutPLMApp extends StatelessWidget {
  const AboutPLMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('About PLM'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'The University',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 30.0),
                          Text(
                            'Pamantasan ng Lungsod ng Maynila (PLM)1 is the first and only chartered and autonomous university funded by a city government. It was created by the Congress of the Philippines by virtue of Republic Act No. 4196 or “An Act Authorizing the City of Manila to Establish and operate the University of City Manila” on June 19, 1965.\n\nThe university first opened its gates on July 17, 1967, to 556 first-year students at its campus in the historic Intramuros district, which served as the seat of power during the Spanish occupation.\n\nPLM is the first local government-funded tertiary institution that offered tuition-free education. PLM also carries the distinction of being the first tertiary institution to have a Filipino official name, which is why people use “Pamantasan” to refer to PLM. The word pamantasan derived from the Filipino term “pantas” or wise person. The University stands on historic grounds. On its site once stood the Universidad de San Ignacio (1590-1798), Universidad Maximo de San Ignacio, Colegio de San Jose, and Ateneo Municipal de Manila (1865-1901). PLM is a premier university that has consistently garnered a 100% passing rate in licensure exams. Since 1967, it has produced competent and socially \nresponsible graduates who have contributed to nation-building.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                      right: 0,
                      child: Image.asset(
                        'lib/images/2.png', // Replace with your image path
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'More Information',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ButtonWidget(
                        title: 'Contact PLM',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Contact(),
                            ),
                          );
                        },

                      ),
                      ButtonWidget(
                        title: 'Programs/Courses',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProgramCourses(),
                            ),
                          );
                        },
                      ),
                      ButtonWidget(
                        title: 'Hymn, Mission and Vision',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Mission(),
                            ),
                          );
                        },
                      ),
                      ButtonWidget(
                        title: 'Academic Calendar',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CalendarMain(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 32.0),
                      EmailWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class ButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          elevation: 4.0,
        ),
        child: Text(title),
      ),
    );
  }
}



class EmailWidget extends StatefulWidget {
  @override
  _EmailWidgetState createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  void _deleteMessage() {
    setState(() {
      _messageController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Send Email',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _messageController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 100.0),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Send email
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: Text('Send'),
              ),
              SizedBox(width: 5.0), // Add space between buttons
              ElevatedButton(
                onPressed: _deleteMessage,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                ),
                child: Text('Delete'),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'lib/images/email.png', // Replace with your image path
                    height: 100,
                    width: 150,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
