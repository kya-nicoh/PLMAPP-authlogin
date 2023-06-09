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
          .where((item) => item.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            onChanged: searchItems,
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: filteredItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                color: Colors.blue,
                child: Center(
                  child: Text(
                    filteredItems[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}