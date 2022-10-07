import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Data/data.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/screen/info_card.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';


class WhatCan extends StatelessWidget {
  const WhatCan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isTablet(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * 0.7,
      //color: Colors.blueAccent,


      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  Responsive.isMobile(context)?"What Can,\nI do?":"What Can I do?",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  "Download CV",
                  style: GoogleFonts.oswald(
                    color: Colors.green,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: EdgeInsets.only(top: 25),
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 180,
          //         width: Responsive.isMobile(context)?150:200,
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(
          //                   FontAwesomeIcons.android,
          //                   color: Colors.green,
          //                   size:Responsive.isMobile(context)?38: 48,
          //                 ),
          //                 SizedBox(
          //                   width:Responsive.isMobile(context)?20:30,
          //                 ),
          //                 Text(
          //                     "Android",
          //                     style: GoogleFonts.oswald(
          //                       color: Colors.white,
          //                       fontSize: 18.0,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                 ),
          //               ],
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(top: 10),
          //               child: Text(
          //                 "Can Develope High quality Native and Hybrid Apps. Have experince in Native Mobile development and Flutter development. ",
          //                 style: TextStyle(fontSize: 12, color: kCaptionColor, height: 1.5, ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Container(
          //         height: 180,
          //         width: Responsive.isMobile(context)?150:200,
          //         child: Column(
          //           children: [
          //             Row(
          //               children: [
          //                 Icon(
          //                   FontAwesomeIcons.android,
          //                   color: Colors.green,
          //                   size:Responsive.isMobile(context)?38: 48,
          //                 ),
          //                 SizedBox(
          //                   width:Responsive.isMobile(context)?20:30,
          //                 ),
          //                 Text(
          //                   "Android",
          //                   style: GoogleFonts.oswald(
          //                     color: Colors.white,
          //                     fontSize: 18.0,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Padding(
          //               padding: EdgeInsets.only(top: 10),
          //               child: Text(
          //                 "Can Develope High quality Native and Hybrid Apps. Have experince in Native Mobile development and Flutter development. ",
          //                 style: TextStyle(fontSize: 12, color: kCaptionColor, height: 1.5, ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //
          //     ],
          //   ),
          // ),
      Padding(
        padding: EdgeInsets.only(top: 30),
        child: Container(
          child: Responsive(
            mobile: AnalyticInfoCardGridView(
              crossAxisCount: size.width < 650 ? 2 : 4,
              childAspectRatio: size.width < 650 ? 0.5 : 0.5,
            ),
            tablet: AnalyticInfoCardGridView(),
            desktop: AnalyticInfoCardGridView(
              childAspectRatio: size.width < 1400 ? 1.5 : 1.5,
            ),
          ),
        ),
      ),
        ],
      ),
    );
  }
}
class AnalyticInfoCardGridView extends StatelessWidget {
  const AnalyticInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1.4,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: designProcesses.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: appPadding,
        mainAxisSpacing: appPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => IndoCard(
        info: designProcesses[index],
        index: index,
      ),
    );
  }
}