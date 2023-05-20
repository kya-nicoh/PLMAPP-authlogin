import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/login_register_page.dart';
import '../auth.dart';
import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPageIndex = 0;

  void nextPage() {
    setState(() {
      currentPageIndex++;
    });
  }

  void skipPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    Widget currentPage;
    if (currentPageIndex == 0) {
      currentPage = Page1();
    } else if (currentPageIndex == 1) {
      currentPage = Page2();
    } else if (currentPageIndex == 2) {
      currentPage = Page3();
    } else {
      return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginPage();
          }
        },
      );
    }

    return Scaffold(
      body: currentPage,
      bottomNavigationBar: currentPageIndex == 0
          ? null
          : BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            onPressed: nextPage,
            child: const Text('Next'),
          ),
        ),
      ),
    );
  }
}
