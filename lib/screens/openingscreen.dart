import 'package:delivery/screens/adminlogin.dart';
import 'package:delivery/screens/riderlogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class openingScreen extends StatefulWidget {
  const openingScreen({Key? key}) : super(key: key);

  @override
  State<openingScreen> createState() => _openingScreenState();
}

class _openingScreenState extends State<openingScreen> {
  Color bgColor = const Color(0xff5EAF42);
  Color btnColor = const Color(0xff3B8222);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Super Delivery",
                  style: GoogleFonts.ubuntu(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/openingimage.png"))),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Continue as",
                    style: GoogleFonts.ubuntu(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Expanded(
                      child: Divider(
                    thickness: 2,
                    color: Colors.white,
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: btnColor, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => adminLogin()));
                  },
                  child: Text(
                    "Continue as Admin",
                    style: GoogleFonts.ubuntu(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    color: btnColor, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => riderLogin()));
                  },
                  child: Text(
                    "Continue as Rider",
                    style: GoogleFonts.ubuntu(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don`t Have an account?",
                    style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create one",
                      style: GoogleFonts.ubuntu(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
