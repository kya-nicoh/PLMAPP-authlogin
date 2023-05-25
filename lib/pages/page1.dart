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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/images/plm.png', // Replace with your second image asset path
                    width: 500,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 1),
                  Image.asset(
                    'lib/images/welcome_image.png', // Replace with your actual image asset path
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Welcome to the Centralized Mobile App of Pamantasan ng Lungsod ng Maynila',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(height: 20),
                  Row(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
