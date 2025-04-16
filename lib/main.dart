import 'package:flutter/material.dart';
import 'package:homzes/welcome_screen.dart';
import 'package:homzes/catalog1_screen.dart';
import 'package:homzes/catalog3_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(HomzesApp());
}

class HomzesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homzes',
      theme: ThemeData(primarySwatch: Colors.green),
      home: WelcomeScreen(),
      routes: {
        '/catalog1': (_) => Catalog1Screen(),
        '/catalog3': (_) => Catalog3Screen(),
      },
    );
  }
}
