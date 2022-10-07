import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Data/data.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/screen/info_card.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isTablet(context)
          ? MediaQuery.of(context).size.width * 0.8
          : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Text(
            "About Me",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: Responsive.isMobile(context)?32:42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "How am I?",
            style: GoogleFonts.oswald(
              color: Colors.green,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (!Responsive.isMobile(context))
                  Container(
                    height: Responsive.isTablet(context)
                        ? size.width * 0.4
                        : size.width * 0.3,
                    child: Image.asset(
                      "assets/images/asad.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.isMobile(context) ? 0 : 70, top: Responsive.isTablet(context)?15:30),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Asad Hayat",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontSize: Responsive.isTablet(context)?24:Responsive.isMobile(context)?22:30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Software Enginner",
                                  style: GoogleFonts.oswald(
                                    color: Colors.green,
                                    fontSize: Responsive.isTablet(context)?16.0:Responsive.isMobile(context)?14:24.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: Responsive.isMobile(context)
                                ? size.width * 0.7
                                : size.width * 0.4,
                            child: Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                textAlign: TextAlign.justify,
                                "I was enrolled in PMAS Arid Agriculture University, Rawalpindi and completed my BS Computer Science in June, 2021. I have been developing mobile apps for over 1.1 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. I have done two courses on App Development under Pakistan Official Institutions.",
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontSize:
                                      Responsive.isMobile(context) || Responsive.isTablet(context)? 16.0 : 24.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: Container(
                              width: Responsive.isMobile(context)
                                  ? size.width * 0.7
                                  : size.width * 0.4,
                              height: 1,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: Responsive.isMobile(context)
                            ? size.width * 0.7
                            : size.width * 0.4,
                        child: Responsive.isMobile(context)||Responsive.isTablet(context)
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Name",
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                            fontSize: Responsive.isMobile(context)
                                                ? 16.0
                                                : Responsive.isTablet(context)?20.0:24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          ": Asad Hayat",
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                            fontSize: Responsive.isMobile(context)
                                                ? 16.0
                                                :Responsive.isTablet(context)?18.0: 20.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.only(top: 5),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Email",
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                            fontSize: Responsive.isMobile(context)
                                                ? 16.0
                                                :Responsive.isTablet(context)?20.0: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          ": asadhayat2007@gmail.com",
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                            fontSize: Responsive.isMobile(context)
                                                ? 16.0
                                                :Responsive.isTablet(context)?18.0: 20.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Name",
                                        style: GoogleFonts.oswald(
                                          color: Colors.white,
                                          fontSize: Responsive.isMobile(context)
                                              ? 16.0
                                              : 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        ": Asad Hayat",
                                        style: GoogleFonts.oswald(
                                          color: Colors.white,
                                          fontSize: Responsive.isMobile(context)
                                              ? 16.0
                                              : 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Email",
                                        style: GoogleFonts.oswald(
                                          color: Colors.white,
                                          fontSize: Responsive.isMobile(context)
                                              ? 16.0
                                              : 24.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        ": asadhayat2007@gmail.com",
                                        style: GoogleFonts.oswald(
                                          color: Colors.white,
                                          fontSize: Responsive.isMobile(context)
                                              ? 16.0
                                              : 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
