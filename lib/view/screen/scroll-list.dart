import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/screen/Appbar.dart';
import 'package:portfolio/view/utils/constrants.dart';

class Scroldata extends StatefulWidget {


  @override
  State<Scroldata> createState() => _HomeState();
}

class _HomeState extends State<Scroldata> {
  List<String> items = [
    "HOME",
    "ABOUT",
    "SERVICE",
    "PROJECTS",
    "CONTACT",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 500,
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "A",
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontSize: 46.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                  width: 170,
                  height: 1,
                  color: Colors.white30,
                ),
              ),
              Container(
                width: 200,
                height: 250,
                child: ListView.builder(
                    itemCount: items.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Container(
                                width: 170,
                                height: 1,
                                color: Colors.white30,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),

              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: 80,
                  height: 40,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.green),
                  ),
                  child: Center(
                    child: Text(
                      "Resume",
                      style: TextStyle(
                          color: Colors.green
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
