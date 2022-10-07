import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';

class IndoCard extends StatelessWidget {
  IndoCard({Key? key, required this.info, this.index}) : super(key: key);

  final DesignProcess info;
  int? index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isMobile(context) ? 150 : 200,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                info.imagePath,
                color: Colors.green,
                size: Responsive.isMobile(context) ? 38 : 48,
              ),
              SizedBox(
                width: Responsive.isMobile(context) ? 20 : 30,
              ),
              Text(
                info.title,
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: Responsive.isMobile(context) ? 14.0 : 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Can Develope High quality Native and Hybrid Apps. Have experince in Native Mobile development and Flutter development. ",
              style: TextStyle(
                fontSize: Responsive.isTablet(context)?10.0:12,
                color: kCaptionColor,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
