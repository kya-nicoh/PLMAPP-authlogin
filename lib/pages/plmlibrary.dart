import 'package:flutter/material.dart';
import '../pages/librarycatalogue.dart';

class plmlibrary extends StatefulWidget {
  const plmlibrary({Key? key}) : super(key: key);

  @override
  plmlibrarystate createState() => plmlibrarystate();
}

class plmlibrarystate extends State<plmlibrary> {
  int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          SliverToBoxAdapter(
            child: Column(
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
                        Icon(Icons.circle_outlined),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 70.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 8.0),
                                      Text(
                                        'Student Number',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 80.0, bottom: 20),
                                  child: Transform.scale(
                                    scale: 3.5,
                                    child: Image.asset(
                                      'lib/images/onebyoneplaceholder.png',
                                      width: 30.0,
                                      height: 30.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 16.0,
                          left: 16.0,
                          right: 16.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 140.0, top: 10.0), // Set the left padding
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'P',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'L',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  'M',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 2), // Add some horizontal spacing between the sets of texts
                                          Container(
                                            width: 100,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'AMANTASAN NG',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFF8CF44),
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.visible,
                                                ),
                                                Text(
                                                  'UNGSOD NG',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFF8CF44),
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.visible,
                                                ),
                                                Text(
                                                  'AYNILA',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFFF8CF44),
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.visible,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 7.0),
                                child: Image.asset(
                                  'lib/images/logo.png',
                                  width: 50.0,
                                  height: 50.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),

                Container(
                  child: Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Add functionality for the button
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 20.0),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 70.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Transform.scale(
                                scale: 2.5,
                                child: IgnorePointer(
                                  child: Image.asset(
                                    'lib/images/library_setappointment.png',
                                    width: 40.0,
                                    height: 40.0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: IgnorePointer(
                                child: Text(
                                  'SET \nAPPOINTMENT',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 30.0), // Add spacing between the buttons
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Add functionality for the button
                              },
                              child: Container(
                                padding: EdgeInsets.only(top: 20.0),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 70.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Transform.scale(
                                scale: 2.5,
                                child: IgnorePointer(
                                  child: Image.asset(
                                    'lib/images/library_borrowedbooks.png',
                                    width: 40.0,
                                    height: 40.0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              child: IgnorePointer(
                                child: Text(
                                  'BORROWED\nBOOKS',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),


                SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF4FA3F1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(56.0),
                        topRight: Radius.circular(56.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // Adjust the shadow offset as desired
                        ),
                      ],
                    ),
                    child: librarycatalogue(),
                  ),
                )


              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the "Home" button
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: Colors.white), // Replace with the desired home icon
                      SizedBox(width: 8), // Add some spacing between the icon and text
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(3.0),
                      bottomLeft: Radius.circular(3.0),
                    ),
                  ),
                  backgroundColor: Color(0xFFFF1330),
                ),
              ),
            ),

            SizedBox(height: 2.0),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality for the "Website" button
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.language, color: Colors.black), // Replace with the desired website icon
                      SizedBox(width: 8), // Add some spacing between the icon and text
                      Text(
                        'Website',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(3.0),
                      topLeft: Radius.circular(3.0),
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                  primary: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 30.0),
          ],
        ),
      ),



    );
  }
}
