import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textformField with ChangeNotifier {
  bool obsuretext = true;
  // ignore: non_constant_identifier_names
  final Emailformkey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final Passwordformkey = GlobalKey<FormState>();
  String? email;
  String? password;

  Widget Emailformfiled() {
    return Form(
      key: Emailformkey,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        style: GoogleFonts.ubuntu(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
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
          return validateEmail(value);
        },
      ),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  // ignore: non_constant_identifier_names
  Widget Passwordformfiled() {
    return Form(
      key: Passwordformkey,
      child: TextFormField(
        obscureText: obsuretext,
        cursorColor: Colors.black,
        style: GoogleFonts.ubuntu(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
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
          if (value!.isEmpty) {
            return "Enter valid Password";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
