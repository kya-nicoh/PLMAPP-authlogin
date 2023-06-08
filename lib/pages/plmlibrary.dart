import 'package:flutter/material.dart';

class plmlibrary extends StatelessWidget {
  const plmlibrary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle_outlined), // REPLACE ICON
                      SizedBox(width: 8),
                      Text(
                        'Pamantasan ng Lungsod ng Maynila',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      width: double.infinity,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              'Online Library',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          // Other content below the yellow rectangle
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF1F11B1),
                                    Color(0xFFF3320B),
                                    Color(0xFFFA9310),
                                  ],
                                  stops: [0.0, 0.99, 1.0],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Container(
                                  width: 300,
                                  height: 200,
                                  margin: EdgeInsets.only(top: 0, right: 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Image.asset(
                                    'lib/images/eagle.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.black.withOpacity(0.3),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 30.0,
                              child: Container(
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF451515),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 16.0),
                                      child: Text(
                                        'Overlay Text',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 16.0),
                                      child: Image.asset(
                                        'lib/images/onebyoneplaceholder.png',
                                        width: 30.0,
                                        height: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 100,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
