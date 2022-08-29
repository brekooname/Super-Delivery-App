import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textformField with ChangeNotifier {
  bool obsuretext = true;
  final formkey = GlobalKey<FormState>();
  Widget formfiled() {
    String email;
    return Form(
      key: formkey,
      child: TextFormField(
        autocorrect: false,
        style: GoogleFonts.ubuntu(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusColor: Colors.white,
          hintText: "Enter your Email",
          hintStyle: GoogleFonts.ubuntu(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          email = value;
          notifyListeners();
        },
        validator: (value) {
          return value!.isEmpty ? "Enter your Email" : null;
        },
      ),
    );
  }

  Widget Passwordformfiled() {
    String password;
    return Form(
      key: formkey,
      child: TextFormField(
        obscureText: obsuretext,
        cursorColor: Colors.black,
        style: GoogleFonts.ubuntu(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                obsuretext = !obsuretext;
                notifyListeners();
              },
              icon: Icon(
                // ignore: dead_code
                obsuretext ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              )),
          focusColor: Colors.white,
          hintText: "Enter your Password",
          hintStyle: GoogleFonts.ubuntu(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onChanged: (value) {
          password = value;
          notifyListeners();
        },
        validator: (value) {
          return value!.isEmpty ? "Enter valid password " : null;
        },
      ),
    );
  }
}
