import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas/home.dart';
import 'package:uas/login.dart';
import 'package:uas/main.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false
    );
  }
}

class Wednesday extends StatefulWidget {
  const Wednesday({super.key});

  @override
  State<Wednesday> createState() => _WednesdayState();
}

class _WednesdayState extends State<Wednesday> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 38, 132),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Home()
                      )
                    );
                  },
                ),
                Container(
                  width: 125.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70.0),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.logout_outlined),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => Login()
                              )
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ),
          SizedBox(height: 15.0),

          Padding(
            padding: EdgeInsets.only(left: 70),
            child: Row(
              children: <Widget>[
                Text(
                  "JADWAL PELAJARAN",
                  style: GoogleFonts.inter(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          
          Container(
            height: MediaQuery.of(context).size.height - 160.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
                topRight: Radius.circular(75.0)
              )
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0),
              children: <Widget>[
                SizedBox(height: 35.0),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: "Rabu",
                              style: GoogleFonts.inter(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                              children: [
                                TextSpan(
                                  text: " (4)",
                                  style: GoogleFonts.inter(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                  )
                                )
                              ]
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.0),
                
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                  child: Container(
                    width: 50,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ),
                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 40.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 213, 212, 254),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                child: Text(
                                  "07.30\n  AM",
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 100,
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "FISIKA",
                                style: GoogleFonts.inter(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Aaron Kwak",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 124, 113, 113)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 40.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 254, 212, 253),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                child: Text(
                                  "09.20\n  AM",
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 100,
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "BAHASA MANDARIN",
                                style: GoogleFonts.inter(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Roberta Guaspari",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 124, 113, 113)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 40.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 212, 244, 254),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                child: Text(
                                  "12.00\n  PM",
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 100,
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "PUBLIC SPEAKING",
                                style: GoogleFonts.inter(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Elias Ainsworth",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 124, 113, 113)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 40.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 254, 233, 212),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                child: Text(
                                  "01.50\n  PM",
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 100,
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "INTENSIVE READING",
                                style: GoogleFonts.inter(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Text(
                                "Izumi Curtis",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 124, 113, 113)
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}