import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';
import '../pages/healthdeclaration.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text('PLM APP');
  }

  Widget _userUid() {
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(
      onPressed: signOut,
      child: const Text('Sign Out'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Pamantasan ng Lungsod ng Maynila'),
        ),
        body: SingleChildScrollView(
            child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: const Text(
                'Welcome!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/images/plm.png',
                  width: 275,
                ),
                Column(
                  children: [
                    // DATE,
                    ElevatedButton(
                      child: const Text('Events'),
                      onPressed: () {
                        debugPrint('Outlined Button');
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: const Text('ABOUT PLM'),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: const Text('MAP'),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: const Text('HEALTH DECLARATION'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HealthDeclaration()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  child: const Text('ACADEMIC \nCALENDAR'),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: const Text('ADMISSION'),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
                OutlinedButton(
                  child: const Text('LIBRARY'),
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                ),
              ],
            ),
            _signOutButton(),
          ],
        )));
  }

  // commented just in case need in the future
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: _title(),
  //     ),
  //     body: Container(
  //       height: double.infinity,
  //       width: double.infinity,
  //       padding: const EdgeInsets.all(20),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           _userUid(),
  //           _signOutButton(),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
