import 'package:flutter/material.dart';
import '../pages/page4.dart';
import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => const Page4(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    );
  }

  void skipPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Page4()),
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: const BoxDecoration(
                color: Color(0xFFFFE600), // Yellow color (#FFE600)
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 1),
                  Text(
                    'Enroll & Apply',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 0),
                          blurRadius: 10,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 1),
                  Image.asset(
                    'lib/images/welcome_image3.png', // Replace with your actual image asset path
                    width: 350,
                    height: 350,
                  ),
                  const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () => launchWebsite(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Set the background color to white
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Adjust the radius to make the button more or less rounded
                      ),
                      elevation: 5, // Add a shadow effect with elevation
                      shadowColor: Colors.grey, // Set the shadow color
                    ),
                    child: const Text(
                      'Enroll and Apply',
                      style: TextStyle(
                        color: Color(0xFFFFE600), // Yellow color (#FFE600)
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => skipPage(context),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Set the background color to transparent
                      elevation: 0, // Remove the button elevation
                    ),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFFE600), // Set the text color to blue
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFE600),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => nextPage(context),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent, // Set the background color to transparent
                      elevation: 0, // Remove the button elevation
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 35,
                      color: Color(0xFFFFE600), // Set the icon color to blue
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
