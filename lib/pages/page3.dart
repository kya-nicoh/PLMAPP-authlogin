import 'package:flutter/material.dart';
import '../pages/login_register_page.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void skipPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  void launchWebsite() async {
    const url = 'https://google.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Color(0xFFFFE600), // Yellow color (#FFE600)
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1),
                  Text(
                    'Enroll & Apply',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1),
                  Image.asset(
                    'lib/images/welcome_image3.png', // Replace with your actual image asset path
                    width: 350,
                    height: 350,
                  ),
                  SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () => launchWebsite(),
                    child: Text(
                      'Enroll and Apply',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFE600), // Yellow color (#FFE600)
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => skipPage(context),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFE600), // Yellow color (#FFE600)
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => nextPage(context),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFE600), // Yellow color (#FFE600)
                    ),
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
