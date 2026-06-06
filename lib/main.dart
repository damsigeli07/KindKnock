import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const KindKnockApp());
}

class KindKnockApp extends StatelessWidget {
  const KindKnockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KindKnock',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}