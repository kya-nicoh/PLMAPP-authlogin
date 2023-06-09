import 'package:flutter/material.dart';

class ProgramCourses extends StatelessWidget {
  const ProgramCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Courses',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProgramPage(),
      routes: {
        '/undergraduateProgramsPage': (context) =>
            const UndergraduateProgramsPage(),
        '/graduateProgramsPage': (context) => GraduateProgramsPage(),
      },
    );
  }
}

class ProgramPage extends StatelessWidget {
  const ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Program Courses'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/undergraduateProgramsPage');
            },
            child: Card(
              margin: const EdgeInsets.all(20.0),
              elevation: 4.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const SizedBox(
                width: 150.0,
                height: 150.0,
                child: Center(
                  child: Text(
                    'Undergraduate Programs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/graduateProgramsPage');
            },
            child: Card(
              margin: const EdgeInsets.all(20.0),
              elevation: 4.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const SizedBox(
                width: 150.0,
                height: 150.0,
                child: Center(
                  child: Text(
                    'Graduate Programs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UndergraduateProgramsPage extends StatefulWidget {
  const UndergraduateProgramsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UndergraduateProgramsPageState createState() =>
      _UndergraduateProgramsPageState();
}

class _UndergraduateProgramsPageState extends State<UndergraduateProgramsPage> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;
  bool isExpanded8 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Undergraduate Programs'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded1 = !isExpanded1;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded1 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded1 ? 100.0 : 150.0,
                      alignment:
                          isExpanded1 ? Alignment.topLeft : Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Architecture and Urban Planning',
                          style: TextStyle(
                            color: isExpanded1 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded1)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Architecture - BS Arch',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded2 = !isExpanded2;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded2 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded2 ? 300.0 : 150.0,
                      alignment: isExpanded2
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Education',
                          style: TextStyle(
                            color: isExpanded2 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded2)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Elementary Education (Generalist) (BEEd)\n \nBachelor of Early Childhood Education (BECEd)\n \nBachelor of Special Needs Education (Generalist) (SDNEd)\n \nBachelor of Secondary Education Major in English(BSEd-Eng)\n \nBachelor of Secondary Education Major in Filipino(BSEd-Fil)\n \nBachelor of Secondary Education Major in Mathematics(BSEd-Math)\n \nBachelor of Secondary Education Major in Science(BSEd-Sciences)\n \nBachelor of Secondary Education Major in Social Studies(BSEd-SS)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded3 = !isExpanded3;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded3 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded3 ? 320.0 : 150.0,
                      alignment: isExpanded3
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Engineering and Technology',
                          style: TextStyle(
                            color: isExpanded3 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded3)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Chemical Engineering - BSCHE\n \nBachelor of Science in Civil Engineering - BSCE\n \nBachelor of Science in Computer Engineering - BSCpE\n \nBachelor of Science in Computer Science - BSCS\n \nBachelor of Science in Electrical Engineering - BSEE\n \nBachelor of Science in Electronics Engineering - BSECE\n \nBachelor of Science in Information Technology - BSIT\n \nBachelor of Science in Manufacturing Engineering - BSMFGE\n \nBachelor of Science in Mechanical Engineering - BSME\n \n',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded4 = !isExpanded4;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded4 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded4 ? 190.0 : 150.0,
                      alignment:
                          isExpanded4 ? Alignment.topLeft : Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Humanities, Arts, and Social Sciences',
                          style: TextStyle(
                            color: isExpanded4 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded4)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Arts in Communication - BAC\n \nBachelor of Arts in Communication Major in Public Relations - BAC-PR\n \nBachelor of Arts in Public Relations - BAPR\n \nBachelor of Science in Social Work - BS SW',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded5 = !isExpanded5;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded5 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded5 ? 100.0 : 150.0,
                      alignment: isExpanded5
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Nursing',
                          style: TextStyle(
                            color: isExpanded5 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded5)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Nursing - BSN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded6 = !isExpanded6;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded6 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded6 ? 100.0 : 150.0,
                      alignment: isExpanded6
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Physical Therapy',
                          style: TextStyle(
                            color: isExpanded6 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded6)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Physical Therapy - BSPT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded7 = !isExpanded7;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded7 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded7 ? 220.0 : 150.0,
                      alignment: isExpanded7
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Science',
                          style: TextStyle(
                            color: isExpanded7 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded7)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Biology - BS Bio\n \nBachelor of Science in Chemistry - BS Chem\n \nBachelor of Science in Mathematics - BS Math\n \nBachelor of Science in Psychology - BS PSY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded8 = !isExpanded8;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded8 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded8 ? 450.0 : 150.0,
                      alignment: isExpanded8
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'PLM Business School',
                          style: TextStyle(
                            color: isExpanded8 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded8)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Bachelor of Science in Accountancy - BS ACCTG\n \nBachelor of Science in Business Administration Major in\nBusiness Economics - BSBA BE\n \nBachelor of Science in Business Administration Major in\nFinancial Management - BSBA FM\n \nBachelor of Science in Business Administration Major in\nHuman Resources - BSBA HRM\n \nBachelor of Science in Business Administration Major in\nMarketing Management - BSBA MM\n \nBachelor of Science in Business Administration Major in\nOperation Management - BSBA OM\n \nBachelor of Science in Entrepreneurship - BS ENTRE\n \nBachelor of Science in Hospitality Management - BSHM\n \nBachelor of Science in Real State Management - BS REM\n \nBachelor of Science in Tourism Management - BSTM',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
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
    );
  }
}

// ignore: use_key_in_widget_constructors
class GraduateProgramsPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _GraduateProgramsPageState createState() => _GraduateProgramsPageState();
}

class _GraduateProgramsPageState extends State<GraduateProgramsPage> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  bool isExpanded5 = false;
  bool isExpanded6 = false;
  bool isExpanded7 = false;
  bool isExpanded8 = false;
  bool isExpanded9 = false;
  bool isExpanded10 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graduate Programs'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded1 = !isExpanded1;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded1 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded1 ? 320.0 : 150.0,
                      alignment: isExpanded1
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Engineering',
                          style: TextStyle(
                            color: isExpanded1 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded1)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Engineering with Specialization in Computer Engineering\n \nMaster of Engineering with Specialization in Structural Engineering\n \nMaster of Engineering Management with Specialization\nin Construction Management\n \nMaster of Engineering Management with Specialization\nin Manufacturing Management\n \nMaster of Information Technology\n \nMaster of Science in Management Engineering\n \nMaster of Engineering Management with Specialization\nin Systems Management',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded2 = !isExpanded2;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded2 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded2 ? 100.0 : 150.0,
                      alignment: isExpanded2
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Nursing',
                          style: TextStyle(
                            color: isExpanded2 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded2)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Arts in Nursing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded3 = !isExpanded3;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded3 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded3 ? 100.0 : 150.0,
                      alignment: isExpanded3
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Physical Therapy',
                          style: TextStyle(
                            color: isExpanded3 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded3)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Science in Physical Therapy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded4 = !isExpanded4;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded4 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded4 ? 130.0 : 150.0,
                      alignment: isExpanded4
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'School of Government',
                          style: TextStyle(
                            color: isExpanded4 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded4)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Doctor of Public Administration\n \nMaster of Public Administration - In-Campus',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded5 = !isExpanded5;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded5 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded5 ? 330.0 : 150.0,
                      alignment: isExpanded5
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Education',
                          style: TextStyle(
                            color: isExpanded5 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded5)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Arts in Education Major in Biological Sciences\n \nMaster of Arts in Education Major in Social Studies\n \nDoctor of Education in Educational Administration\n \nMaster of Science in Mathematics Education\n \nMaster of Arts in Education - Chemistry\n \nMaster of Arts in Education - Physics\n \n Doctor of Education in Educational Management and Leadership\n \nMaster of Arts in Education - Major in Educational Management\nand leadership\n \nMaster of Arts in Special Education - SP in Development Delays',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded6 = !isExpanded6;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded6 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded6 ? 100.0 : 150.0,
                      alignment: isExpanded6
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Graduate School of Law',
                          style: TextStyle(
                            color: isExpanded6 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded6)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Laws',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded7 = !isExpanded7;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded7 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded7 ? 130.0 : 150.0,
                      alignment: isExpanded7
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Science',
                          style: TextStyle(
                            color: isExpanded7 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded7)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Arts in Psychology - Clinical Psychology\n \nMaster of Arts in Psychology - Major in Industrial Psychology',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded8 = !isExpanded8;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded8 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded8 ? 100.0 : 150.0,
                      alignment: isExpanded8
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'College of Humanities, Arts, and Social Sciences',
                          style: TextStyle(
                            color: isExpanded8 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded8)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Arts in Communication Management',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded9 = !isExpanded9;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded9 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded9 ? 200.0 : 150.0,
                      alignment: isExpanded9
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'PLM Business School',
                          style: TextStyle(
                            color: isExpanded9 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded9)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Doctor in Business Administration\n \nMaster in Business Administration - In-Campus Program\n \nMaster in Business Administration - Top Executive Program\n- In-Campus Program\n \nMaster in Business Administration - Top Executive Program\n- Out-Campus Program',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded10 = !isExpanded10;
                });
              },
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: isExpanded10 ? Colors.blue : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 1000.0,
                      height: isExpanded10 ? 100.0 : 150.0,
                      alignment: isExpanded10
                          ? Alignment.topLeft
                          : Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'PLM-School of Public Health',
                          style: TextStyle(
                            color: isExpanded10 ? Colors.white : Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    if (isExpanded10)
                      const Positioned(
                        top: 70.0,
                        left: 10.0,
                        child: Text(
                          'Master of Public Health',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
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
    );
  }
}
