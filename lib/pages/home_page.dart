import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/models/body_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<BodyPartsModel>> readJsonData() async {
    //read json file
    final jsondata = await rootBundle.loadString('assets/json/body_area.json');
    //decode json data as list
    final list = json.decode(jsondata).cast<Map<String, dynamic>>();

    //map json and initialize using DataModel
    return list
        .map<BodyPartsModel>((json) => BodyPartsModel.fromJson(json))
        .toList();
  }

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
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
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
                                  blurRadius: 20,
                                  offset: Offset(0, 6)),
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
            const SizedBox(height: 30),
            Stack(children: [
              Container(
                height: 98,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(8, 10),
                        blurRadius: 40,
                        color: Color(0xff1a237e).withOpacity(0.2),
                      ),
                      BoxShadow(
                        offset: Offset(-1, -5),
                        blurRadius: 10,
                        color: Color(0xff1a237e).withOpacity(0.2),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(right: 170),
                  alignment: Alignment.bottomLeft,
                  child: SvgPicture.asset('assets/fitness.svg'),
                ),
              ),
              Container(
                height: 70,
                width: double.maxFinite,
                margin: const EdgeInsets.only(left: 170, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "You are doing Great",
                      style: TextStyle(
                        color: Color(0xff5c6bc0),
                        fontFamily: GoogleFonts.karlaTextTheme().toString(),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Keep it Up",
                      style: TextStyle(
                        color: Color(0xff9fa8da),
                        fontFamily: GoogleFonts.karlaTextTheme().toString(),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Stick to your Plan",
                      style: TextStyle(
                        color: Color(0xff9fa8da),
                        fontFamily: GoogleFonts.karlaTextTheme().toString(),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Area of Focus",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.latoTextTheme().toString(),
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                )
              ],
            ),
            // Expanded(
            //     child: ListView.builder(
            //   itemCount: info.length.toDouble() ~/ 2,
            //   itemBuilder: (context, i) {
            //     return Row(
            //       children: [
            //         Container(
            //           height: 200,
            //           width: 170,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(15),
            //               color: Colors.white,
            //               image: DecorationImage(
            //                 image: AssetImage(list[]),
            //               ),
            //               boxShadow: [
            //                 BoxShadow(
            //                   offset: Offset(5, 5),
            //                   blurRadius: 10,
            //                   color: Color(0xff9fa8da).withOpacity(0.3),
            //                 ),
            //                 BoxShadow(
            //                   offset: Offset(5, 5),
            //                   blurRadius: 10,
            //                   color: Color(0xff9fa8da).withOpacity(0.3),
            //                 )
            //               ]),
            //           child: Center(
            //             child: Align(
            //               alignment: Alignment.bottomCenter,
            //               child: Text(
            //                 info[i]["title"],
            //                 style: TextStyle(
            //                   fontFamily:
            //                       GoogleFonts.karlaTextTheme().toString(),
            //                   fontSize: 20,
            //                   color: Color(0xff9fa8da),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         )
            //       ],
            //     );
            //   },
            // )),

            FutureBuilder(
              future: readJsonData(),
              builder: (context, data) {
                if (data.hasError) {
                  //in case if error found
                  return Center(child: Text("${data.error}"));
                } else if (data.hasData) {
                  //once data is ready this else block will execute
                  // items will hold all the data of DataModel
                  //items[index].name can be used to fetch name of product as done below
                  var items = data.data as List<BodyPartsModel>;
                  return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Image(
                                image: AssetImage(items[index].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 5),
                            Expanded(
                                child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      items[index].title,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        );
                      });
                } else {
                  // show circular progress while data is getting fetched from json file
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ]),
        ),
      ),
    );
  }
}
