import 'package:delivery/constant/textformfield.dart';
import 'package:delivery/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class adminLogin extends StatefulWidget {
  const adminLogin({Key? key}) : super(key: key);

  @override
  State<adminLogin> createState() => _adminLoginState();
}

class _adminLoginState extends State<adminLogin> {
  Color bgColor = const Color(0xff5EAF42);
  Color btnColor = const Color(0xff3B8222);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text(
          "Login as Admin",
          style: GoogleFonts.ubuntu(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/admin.png"))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Email",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Consumer<textformField>(
                builder: ((context, value, child) => value.Emailformfiled())),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Password",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Consumer<textformField>(
                builder: ((context, value, child) =>
                    value.Passwordformfiled())),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
                color: btnColor, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                if (Provider.of<textformField>(context, listen: false)
                        .Emailformkey
                        .currentState!
                        .validate() &
                    Provider.of<textformField>(context, listen: false)
                        .Passwordformkey
                        .currentState!
                        .validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homepage()));
                }
              },
              child: Text(
                "Log in",
                style: GoogleFonts.ubuntu(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
