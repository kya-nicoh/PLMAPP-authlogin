import 'package:flutter/material.dart';


class Mission extends StatelessWidget {
  const Mission({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vision, Mission, Hymn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Curved Grid View'),
        ),
        backgroundColor: Colors.white, // Set the background color of the Scaffold
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 250.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Vision',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5.0),
                            const Expanded(
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    'The Pamantasan ng Lungsod ng Maynila shall be the premier people’s university pursuing public interest and national development.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11.0,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1.0,
                        height: double.infinity,
                        color: Colors.grey,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: const Align(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  'Mission',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            const Expanded(
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Text(
                                    'The Pamantasan ng Lungsod ng Maynila shall form critical-minded and service-oriented leaders and innovators in various disciplines through accessible and relevant quality education, transformative institutional research and extension services, and key linkages.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11.0,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  width: 150.0,
                  height: 150.0,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Core Values',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                        child: Text(
                          'The Pamantasan ng Lungsod ng Maynila shall be guided by the values of academic excellence, integrity and social responsibility, and by the principles of Karunungan, Kaunlaran and Kadakilaan.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  width: 150.0,
                  height: 250.0,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'Goal',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Key Result Areas',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold, // Add this line to make the text bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "The PLM's Goals and Objectives for the next five (5) years: ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'RAISE PLM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold, // Add this line to make the text bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                        child: Text(
                          '* Provide Relevant Quality Tertiary Education\n* Generate Augmented Resources\n* Sustain Institutionalized Research and Extension\n* Deliver Service to the Public\n* Advance Employee, Faculty and Student Welfare\n* Promote Public Interest\n* Establish Linkages and Partnerships\n* Optimize Management of Resources',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11.0,
                          ),
                          textAlign: TextAlign.justify,
                        ),

                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 4.0,
                color: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: SizedBox(
                  width: 150.0,
                  height: 200.0,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'The PLM Hymn',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                        child: Text(
                          "Pamantasan, Pamantasang MahalNagpupugay kami't nag-aalayNg Pag-ibig, taos na paggalangSa patnubay ng aming isipan.\n \nKarunungang tungo'y kaunlaranHinuhubog kaming kabataan Maging Pilipinong mero'ng dangalPuso'y tigib ng kadakilaan.\n \nPamantasang Lungsod ng MaynilaKaming lahat dito'y iyong punlaTutuparin pangarap mo't nasaPamantasan kami'y nanunumpa. Pamantasan kami'y nanunumpa.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.0,
                          ),
                          textAlign: TextAlign.center,
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
    );
  }
}
