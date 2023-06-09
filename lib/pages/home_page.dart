import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';
import '../pages/healthdeclaration.dart';
import '../pages/plm_website_view.dart';
import '../pages/academic_calendar.dart';
import '../pages/program_courses.dart';
import '../pages/expanded_events.dart';
import '../pages/aboutplm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/plm.png',
                  width: 275,
                  height: 300,
                ),
                Column(
                  children: [
                    // DATE,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ExpandedEvents()));
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.question_answer),
                      Text('ABOUT PLM'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutPLMApp()));
                  },
                ),
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.map),
                      Text('MAP'),
                    ],
                  ),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.receipt),
                      Text('HEALTH DECLARATION'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HealthDeclaration()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.calendar_month),
                      Text('ACADEMIC\nCALENDAR'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CalendarMain()));
                  },
                ),
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.person),
                      Text('ADMISSION'),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProgramCourses()));
                  },
                ),
                OutlinedButton(
                  child: Column(
                    children: const [
                      Icon(Icons.book),
                      Text('LIBRARY'),
                    ],
                  ),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
              ],
            ),
            Column(
              children: <Widget>[
                _signOutButton(), // TO-DO: not logging out, if persist just redirect to home
              ],
            )
          ],
        )));
  }

  // commented just in case need in the future
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: _title(),
  //     ),
  //     body: Container(
  //       height: double.infinity,
  //       width: double.infinity,
  //       padding: const EdgeInsets.all(20),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           _userUid(),
  //           _signOutButton(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
