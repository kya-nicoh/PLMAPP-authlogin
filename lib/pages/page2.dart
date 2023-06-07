import 'package:flutter/material.dart';
import 'page3.dart';
import '../pages/login_register_page.dart';
import '../pages/page4.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => const Page3(),
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
                color: Color(0xFFE84949), // Color theme for the oblong
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Center(
                      child: Text(
                        'Be notified of Schedules and Updates',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
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
                    'lib/images/welcome_image2.png', // Replace with your actual image asset path
                    width: 350,
                    height: 350,
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Stay Updated',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE84949),
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
                        color: Color(0xFFE84949), // Set the text color to blue
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
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFE84949),
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
                      color: Color(0xFFE84949), // Set the icon color to blue
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
