import '../auth.dart';
import '../pages/plm_website_view.dart';
import 'package:flutter/material.dart';
import '../pages/aboutplm.dart';
class GuestPage extends StatelessWidget {
  const GuestPage({super.key});

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
                'Welcome, Guest!',
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
                        debugPrint('Outlined Button');
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
                      Icon(Icons.person),
                      Text('ADMISSION'),
                    ],
                  ),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 3,
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PLM_Site()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.home),
                    Text('   PLM WEBSITE'),
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
