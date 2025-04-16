import 'package:flutter/material.dart';

class Catalog3Screen extends StatelessWidget {
  final List<Map<String, dynamic>> properties = [
    {
      'image': 'assets/images/home1.jpg',
      'title': 'Apartment 4 rooms',
      'location': 'Russia, Moscow',
      'beds': 3,
      'baths': 2,
      'price': 1250
    },
    {
      'image': 'assets/images/home2.jpg',
      'title': 'Apartment 3 rooms',
      'location': 'Russia, Moscow',
      'beds': 2,
      'baths': 2,
      'price': 1430
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 70, left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 198, 231, 190), // Light yellow
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //border: Border.all(color: Colors.white, width: 2),
                          color: Colors.black, // transparent fill
                        ),
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white, // icon color to match the border
                          onPressed: () {
                            // action
                          },
                        ),
                      ),

                      SizedBox(width: 10), // optional spacing
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 16),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Popular rent offers",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _verticalList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    //     appBar: AppBar(title: Text('Popular rent offers')),
    //     body: ListView.builder(
    //       itemCount: properties.length,
    //       padding: EdgeInsets.all(16),
    //       itemBuilder: (_, index) {
    //         final prop = properties[index];
    //         return Card(
    //           shape:
    //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    //           margin: EdgeInsets.only(bottom: 16),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               ClipRRect(
    //                 borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
    //                 child: Image.asset(prop['image'], fit: BoxFit.cover),
    //               ),
    //               Padding(
    //                 padding: const EdgeInsets.all(12.0),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Row(
    //                       children: [
    //                         _iconLabel('${prop['beds']} Beds'),
    //                         SizedBox(width: 10),
    //                         _iconLabel('${prop['baths']} Bathroom'),
    //                       ],
    //                     ),
    //                     SizedBox(height: 8),
    //                     Text(prop['title'],
    //                         style: TextStyle(fontWeight: FontWeight.bold)),
    //                     Text(prop['location'],
    //                         style: TextStyle(color: Colors.grey[600])),
    //                     SizedBox(height: 8),
    //                     Text('\$${prop['price']} / mo',
    //                         style: TextStyle(fontWeight: FontWeight.bold)),
    //                   ],
    //                 ),
    //               )
    //             ],
    //           ),
    //         );
    //       },
    //     ),
    //   );
    // }

    // Widget _iconLabel(String label) {
    //   return Container(
    //     padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    //     decoration: BoxDecoration(
    //       color: Colors.grey[200],
    //       borderRadius: BorderRadius.circular(8),
    //     ),
    //     child: Text(label),
    //   );
    // }
  }

  Widget _verticalList() {
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: properties.length,
        padding: EdgeInsets.all(16),
        itemBuilder: (_, index) {
          final prop = properties[index];
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(prop['image'], fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _iconLabel('${prop['beds']} Beds'),
                          SizedBox(width: 10),
                          _iconLabel('${prop['baths']} Bathroom'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(prop['title'],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(prop['location'],
                          style: TextStyle(color: Colors.grey[600])),
                      SizedBox(height: 8),
                      Text('\$${prop['price']} / mo',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _iconLabel(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label),
    );
  }
}
