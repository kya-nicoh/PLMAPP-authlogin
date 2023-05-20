import 'package:flutter/material.dart';
import 'page2.dart';
import '../pages/login_register_page.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
  }

  void skipPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      'Welcome!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'lib/images/welcome_image.png', // Replace with your actual image asset path
                    width: 400,
                    height: 400,
                  ),
                  SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Welcome to the Centralized Mobile App of Pamantasan ng Lungsod ng Maynila',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => skipPage(context),
                    child: Text('Skip'),
                  ),
                  const Text(
                    ' . . . ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () => nextPage(context),
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
