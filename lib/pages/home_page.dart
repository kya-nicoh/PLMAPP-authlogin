import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';
import '../pages/healthdeclaration.dart';
import '../pages/plm_website_view.dart';
import '../pages/academic_calendar.dart';
import '../pages/program_courses.dart';
import '../pages/expanded_events.dart';
import '../pages/aboutplm.dart';
import '../pages/plmlibrary.dart';
import '../pages/admissions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('PLM APP');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Pamantasan ng Lungsod ng Maynila'),
        // leading: IconButton( // PUT PLM LOGO HERE
        //   onPressed: () {
        //     Navigator.of(context).pop();
        //   },
        //   icon: const Icon(Icons.arrow_back_ios),
        // ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Icon Button');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, top: 24),
              width: double.infinity,
              child: const Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/plm.png',
                  width: 275,
                  height: 300,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExpandedEvents(),
                          ),
                        );
                      },
                      child: Column(
                        children: const [
                          Icon(Icons.mic),
                          Text('Events'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.question_answer),
                        Text('ABOUT PLM'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutPLMApp(),
                      ),
                    );
                  },
                ),
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.map),
                        Text('MAP'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.receipt),
                        Text('HEALTH\nDECLARATION'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HealthDeclaration(),
                      ),
                    );
                  },
                ),
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.calendar_month),
                        Text('ACADEMIC\nCALENDAR'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalendarMain(),
                      ),
                    );
                  },
                ),
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.person),
                        Text('ADMISSION'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Admission(),
                      ),
                    );
                  },
                ),
                OutlinedButton(
                  child: Center(
                    child: Column(
                      children: const [
                        Icon(Icons.book),
                        Text('LIBRARY'),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const plmlibrary(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                _signOutButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
