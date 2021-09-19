import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Get Set Fit"),
          backgroundColor: const Color(0xff303f9f),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 15),
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
                      fontFamily:
                          GoogleFonts.latoTextTheme().headline1.toString(),
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
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: const [Color(0xff303f9f), Color(0xff7986cb)]),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 10),
                      blurRadius: 10,
                      color: Color(0xff3f51b5).withOpacity(0.3),
                    ),
                    BoxShadow(
                      offset: Offset(-1, -5),
                      blurRadius: 10,
                      color: Color(0xff3f51b5).withOpacity(0.2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(top: 25, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next Workout",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily:
                            GoogleFonts.latoTextTheme().headline2.toString(),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily:
                            GoogleFonts.latoTextTheme().headline2.toString(),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glutes Workout",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily:
                            GoogleFonts.latoTextTheme().headline2.toString(),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.white,
                          size: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(
                            "60 min",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: GoogleFonts.latoTextTheme()
                                    .headline2
                                    .toString(),
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color(0xff1a237e),
                                  blurRadius: 10,
                                  offset: Offset(4, 8)),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.play_circle_fill,
                                color: Colors.white, size: 40),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
