import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Data/data.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/screen/info_card.dart';
import 'package:portfolio/view/screen/testEduction.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isTablet(context)
          ? MediaQuery.of(context).size.width * 0.8
          :  Responsive.isMobile(context)? MediaQuery.of(context).size.width * 0.9
          :MediaQuery.of(context).size.width * 0.7,
      //color: Colors.blueAccent,

      child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Responsive.isMobile(context) ? "Portfolio" : "Portfolio",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize:Responsive.isMobile(context)?32: 42.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Here some of my work are!",
                  style: GoogleFonts.oswald(
                    color: Colors.green,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: ProjectsPotfolio(),
            ),
          ],
        ),
      
    );
  }
}
