import 'package:delivery/firebaseServices/authentication/signinwithgoogle.dart';
import 'package:delivery/screens/homepage.dart';
import 'package:delivery/screens/openingscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<googleSignin>(context).user;
    if (user == null) {
      return openingScreen();
    } else {
      return Homepage();
    }
  }
}
