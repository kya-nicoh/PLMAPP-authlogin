import 'package:flutter/material.dart';
import 'page2.dart';
import '../pages/login_register_page.dart';
import '../pages/page4.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
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
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 1),
                  Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      'Welcome!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 1),
                      Image.asset(
                        'lib/images/plm.png',
                        width: 500,
                        height: 200,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 200),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          'Welcome to the Centralized Mobile App of Pamantasan ng Lungsod ng Maynila',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 150,
                    // Adjust the top value to control the overlap amount
                    child: Image.asset(
                      'lib/images/welcome_image.png',
                      width: 300,
                      height: 300,
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
                        color: Colors.blue, // Set the text color to blue
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
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
                      color: Colors.blue, // Set the icon color to blue
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
