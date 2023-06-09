import '../pages/guest_page.dart';
import 'package:flutter/material.dart';
import '../pages/login_register_page.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  void nextPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  void skipPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => GuestPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.25,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/logo.png', // Replace with your actual logo asset path
                        width: 200,
                        height: 200,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Welcome to PLM',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'The PLM App provides a centralized medium for accessing necessary information about the institution for the benefit of its students, faculty, staff, and guests through a mobile application.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 32),
                      SizedBox(
                        width:
                            200, // Adjust this value to set the desired width
                        child: ElevatedButton(
                          onPressed: () => nextPage(context),
                          child: const Text('Login'),
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width:
                            200, // Adjust this value to set the desired width
                        child: TextButton(
                          onPressed: () => skipPage(context),
                          child: const Text('Skip'),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left:
                      -100, // Adjust this value to move the triangle further to the left
                  child: CustomPaint(
                    painter: TrianglePainter(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.width * 0.25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
