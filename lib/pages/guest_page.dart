import 'package:plmapp_authlogin/pages/aboutplm.dart';
import 'package:plmapp_authlogin/pages/admissions.dart';
import '../auth.dart';
import '../pages/plm_website_view.dart';
import 'package:flutter/material.dart';

class GuestPage extends StatefulWidget {
  const GuestPage({super.key});

  @override
  State<GuestPage> createState() => _GuestPageState();
}

class _GuestPageState extends State<GuestPage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

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
              margin: const EdgeInsets.only(left: 24, top: 24),
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
                    const SizedBox(
                      height: 0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, bottom: 12),
                      height: 115,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            // insert here
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${time.month}-${time.day}\n${time.year}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '${time.hour}:${time.minute} pm',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 100,
                      margin: EdgeInsets.only(left: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          debugPrint('Outlined Button');
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.campaign,
                              size: 45,
                            ),
                            Text(
                              'Events',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: OutlinedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.question_answer),
                        Text(
                          'ABOUT PLM',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutPLMApp()));
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: OutlinedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.map),
                        Text(
                          'MAP',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      debugPrint('Outlined Button');
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: OutlinedButton(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.person),
                        Text(
                          'ADMISION',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Admission()));
                    },
                  ),
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
