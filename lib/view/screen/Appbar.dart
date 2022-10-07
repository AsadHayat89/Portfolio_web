import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/drawerController.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';

class ApplicationBar extends StatelessWidget {
  List<String> items = [
    "HOME",
    "ABOUT",
    "SERVICE",
    "PROJECTS",
    "CONTACT",
  ];

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(drawerController());
    return Container(
      height: 70,
      width: MediaQuery. of(context). size. width,

      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "A",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 5,
                  height: 5,
                  color: Colors.green,
                )
              ],
            ),
            if(Responsive.isMobile(context))
              IconButton(
                  onPressed:(){
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),

              ),
            if(!Responsive.isMobile(context))
              Row(
              children: [
                Container(
                  width: 470,
                  child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              items[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                              ),
                            ),
                          ),
                        );
                      }),

                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
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

          ],
        ),
      ),
    );
  }
}
