import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final List<String> options = ['Rent', 'Buy', 'Search'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/house_image_1.png',
            color: Color.fromRGBO(105, 102, 102, 0.9),
            colorBlendMode: BlendMode.modulate,
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.4)),
          Positioned(
            top: 0,
            left: 0,
            right: 10,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text('Homzes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold)),
              actions: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    color: Colors.transparent, // transparent fill
                  ),
                  child: IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white, // icon color to match the border
                    onPressed: () {
                      // action
                    },
                  ),
                )
              ],
            ),
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 360), // leave space for AppBar
                      Text(
                        'Find the best\nplace for you',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // ... rest of your content
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: options.length,
                  separatorBuilder: (_, __) => SizedBox(
                    width: 12,
                  ),
                  itemBuilder: (context, index) {
                    final option = options[index];

                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      width: 160,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon((Icons.home), size: 30, color: Colors.black87),
                          SizedBox(height: 8),
                          Text(option, style: TextStyle(color: Colors.black87)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/catalog1'),
                  child: Text(
                    'Create an account',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
