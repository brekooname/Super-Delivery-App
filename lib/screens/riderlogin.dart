import 'package:delivery/constant/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class riderLogin extends StatefulWidget {
  const riderLogin({Key? key}) : super(key: key);

  @override
  State<riderLogin> createState() => _riderLoginState();
}

class _riderLoginState extends State<riderLogin> {
  Color bgColor = const Color(0xff5EAF42);
  Color btnColor = const Color(0xff3B8222);
  textformField _textformfield = textformField();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login as Rider",
          style: GoogleFonts.ubuntu(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: bgColor,
      ),
      backgroundColor: bgColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/rider.png"))),
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
                child: _textformfield.formfiled()),
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
                child: _textformfield.Passwordformfiled()),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: btnColor, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => riderLogin()));
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
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
                    "Or",
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
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: btnColor, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => riderLogin()));
                },
                child: Text(
                  "Continue with Google",
                  style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
