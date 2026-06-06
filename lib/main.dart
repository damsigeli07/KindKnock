import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const KindKnockApp());
}

class KindKnockApp extends StatefulWidget {
  const KindKnockApp({super.key});

  @override
  State<KindKnockApp> createState() => _KindKnockAppState();
}

class _KindKnockAppState extends State<KindKnockApp> {
  bool _isLoggedIn = false;
  String _userId = '';
  String _displayName = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KindKnock',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: false,
        ),
      ),
      home: _isLoggedIn
          ? HomeScreen(
              userId: _userId,
              displayName: _displayName,
              onLogout: () => setState(() {
                _isLoggedIn = false;
                _userId = '';
                _displayName = '';
              }),
            )
          : LoginScreen(
              onLogin: (email, displayName) {
                setState(() {
                  _isLoggedIn = true;
                  _userId = email;
                  _displayName = displayName;
                });
              },
            ),
    );
  }
}