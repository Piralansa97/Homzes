import 'package:flutter/material.dart';

class Catalog1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Hi, Stanislav'),
        actions: [CircleAvatar(child: Text('S')), SizedBox(width: 16)],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          SizedBox(height: 24),
          _sectionTitle(context, 'Featured'),
          _horizontalList(),
          SizedBox(height: 24),
          Text('New offers',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          _horizontalList(),
        ],
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
          child: Text('View all', style: TextStyle(color: Colors.blue)),
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
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 4)],
          ),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset('assets/images/home${index + 1}.jpg',
                      fit: BoxFit.cover, width: double.infinity),
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
