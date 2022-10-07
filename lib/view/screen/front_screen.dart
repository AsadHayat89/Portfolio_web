import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';
class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:Responsive.isTablet(context)?MediaQuery. of(context). size. width:Responsive.isMobile(context)?MediaQuery. of(context). size. width*0.9:MediaQuery. of(context). size. width*0.7,

      height: MediaQuery. of(context). size.height*0.8,
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Software Enginner",style: GoogleFonts.oswald(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10,),
                Text("ASAD\nHAYAT",style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 38.0,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 10,),
                Text("Mobile Applicaiton developer, from Pakistan",style: GoogleFonts.oswald(
                  color: kCaptionColor,
                  fontSize: 16.0,
                  height: 1.2,
                  fontWeight: FontWeight.normal,
                ),),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.green
                    ),
                    child: Center(
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (!Responsive.isMobile(context))
          SizedBox(
            width: 50,
          ),
          if (!Responsive.isTablet(context))
            SizedBox(
              width: 50,
            ),
          if (Responsive.isTablet(context))
            Container(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/person.png",fit: BoxFit.fill,),
            ),
          if (Responsive.isDesktop(context))
            Container(
            width: 400,
            height: 500,
            child: Image.asset("assets/images/person.png",fit: BoxFit.fill,),
          )
        ],
      ),
    );
  }
}
