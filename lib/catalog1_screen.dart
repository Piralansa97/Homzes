import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Catalog1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body:
            // StreamBuilder<QuerySnapshot>(
            //   stream: FirebaseFirestore.instance
            //       .collection('Homes/MZGUzJZDGrp22mkylbfO')
            //       .snapshots(),
            //   builder: (context, snapshot) {
            //     if (snapshot.hasError)
            //       return Center(child: Text("Error loading data"));
            //     if (!snapshot.hasData)
            //       return Center(child: CircularProgressIndicator());

            //     final properties = snapshot.data!.docs;

            //     return
            ListView(
          //padding: EdgeInsets.all(16),
          children: [
            Container(
              // padding: EdgeInsets.only(
              //   left: screenWidth, // 5% of screen width
              //   right: screenWidth * 0.05,
              //   top: screenHeight * 0.03, // 3% of screen height
              //   bottom: screenHeight * 0.03,
              // ),
              // width: double.infinity,
              // height: screenHeight * 0.3,
              padding: const EdgeInsets.only(
                  top: 70, left: 16, right: 16, bottom: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 242, 152), // Light yellow
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu, color: Colors.black),
                      Row(
                        children: [
                          Text(
                            "Hi, Stanislav",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.grey[400],
                                child: Text("S",
                                    style: TextStyle(color: Colors.white)),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            // Padding(
            //   padding: EdgeInsets.only(
            //     left: screenWidth, // 5% of screen width
            //     right: screenWidth * 0.05,
            //     top: screenHeight * 0.03, // 3% of screen height
            //     bottom: screenHeight * 0.03,
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  _sectionTitle(context, 'Featured'),
                  _horizontalList(),
                  SizedBox(height: 24),
                  _sectionTitle(context, 'New Offers'),
                  // Text('New offers',
                  //     style:
                  //         TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  _horizontalList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/catalog3'),
          child: Text('View all',
              style: TextStyle(color: const Color.fromARGB(255, 49, 49, 49))),
        ),
      ],
    );
  }

  Widget _horizontalList() {
    return Container(
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => Container(
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromARGB(255, 90, 86, 86),
            boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset('assets/images/home${index + 1}.jpg',
                      fit: BoxFit.cover, width: double.infinity),
                  //await FirebaseFirestore.instance
                  // .collection('Homes/MZGUzJZDGrp22mkylbfO/Image')
                  // .get()
                  // .then((querySnapshot) {
                  //   // Handle your data here
                  // }),

                  //Firestore.instance.collection('Homes/MZGUzJZDGrp22mkylbfO/Image').snapshots().listen((data) {print(data)}),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Apartment ${index + 3} rooms'),
              )
            ],
          ),
        ),
        separatorBuilder: (_, __) => SizedBox(width: 12),
        itemCount: 3,
      ),
    );
  }
}
