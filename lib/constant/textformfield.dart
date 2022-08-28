import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget formfiled() {
  return TextFormField(
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
  );
}

Widget Passwordformfiled() {
  return TextFormField(
    obscureText: true,
    cursorColor: Colors.black,
    style: GoogleFonts.ubuntu(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
    decoration: InputDecoration(
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
  );
}
