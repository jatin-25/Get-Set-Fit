import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 20, right: 15),
          child: Column(children: [
            Row(
              children: [
                Text(
                  'Training',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.latoTextTheme().toString(),
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 6, right: 8.0),
                  child: Icon(
                    Icons.calendar_today_outlined,
                    size: 15,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Your Program',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: GoogleFonts.latoTextTheme().toString(),
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontFamily: GoogleFonts.latoTextTheme().toString(),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 6.0),
                  child: Icon(
                    Icons.arrow_forward_sharp,
                    size: 15,
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
