import 'package:delivery/constant/textformfield.dart';
import 'package:delivery/firebase_options.dart';
import 'package:delivery/screens/homepage.dart';
import 'package:delivery/screens/openingscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const myApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<textformField>(
            create: (context) => textformField())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: openingScreen(),
      ),
    );
  }
}
