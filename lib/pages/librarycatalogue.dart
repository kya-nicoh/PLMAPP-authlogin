import 'package:flutter/material.dart';

class librarycatalogue extends StatefulWidget {
  @override
  _librarycatalogueState createState() => _librarycatalogueState();
}

class _librarycatalogueState extends State<librarycatalogue> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void searchItems(String searchTerm) {
    setState(() {
      filteredItems = items
          .where((item) =>
          item.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60, left: 10, right: 10, bottom: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                onChanged: searchItems,
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: filteredItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 80,
                crossAxisSpacing: 14,
              ),
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: 200, // Adjust the desired width
                      height: 140, // Adjust the desired height
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle button click here
                          print('Item clicked: ${filteredItems[index]}');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Container(),
                      ),
                    ),

                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 15, // Adjust the desired image height
                        child: Transform.scale(
                          scale: 8, // Adjust the scale factor as needed
                          child: Image.asset(
                            'lib/images/placeholderbook.png',
                            fit: BoxFit.contain, // Adjust the fit property as needed
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          filteredItems[index],
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black, // Adjust the text color
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),







        ],
      ),
    );
  }
}