import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Model/designProcess.dart';
import 'package:portfolio/view/screen/testEduction.dart';
import 'package:portfolio/view/utils/Responsive.dart';
import 'package:portfolio/view/utils/constrants.dart';
import 'package:portfolio/view/widgets/OnHover.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: Responsive.isTablet(context) || Responsive.isMobile(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width * 0.7,
      child: Column(
        children: [
          Text(
            "Get In Touch",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: Responsive.isMobile(context) ? 32 : 42.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "lets build something together",
            style: GoogleFonts.oswald(
              color: Colors.green,
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 40),
            child: Responsive.isTablet(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OnHover(builder: (isHovered) {
                        return isHovered
                            ? Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black87,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0.0,
                                            0.75), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Colors.green,
                                      size: 40,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "asadhayat2007@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black26,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Colors.green,
                                      size: 40,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "asadhayat2007@gmail.com",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ),
                                    )
                                  ],
                                ),
                              );
                      }),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: OnHover(builder: (isHovered) {
                          return isHovered
                              ? Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black87,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: Offset(0.0,
                                              0.75), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.green,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "+92 314 6014922",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black26,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.green,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "+92 314 6014922",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                        }),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: OnHover(builder: (isHovered) {
                          return isHovered
                              ? Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.black87,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: Offset(0.0,
                                              0.75), // changes position of shadow
                                        ),
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.green,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Rawalpindi , Pakistan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black26,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.green,
                                        size: 40,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text(
                                          "Rawalpindi , Pakistan",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                        }),
                      )
                    ],
                  )
                : Responsive.isMobile(context)
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.black26,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text(
                                    "asadhayat2007@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black26,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "+92 314 6014922",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.black26,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text(
                                      "Rawalpindi , Pakistan",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 8),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OnHover(builder: (isHovered) {
                            return isHovered
                                ? Container(
                                    width: 300,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.black87,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            spreadRadius: 5,
                                            blurRadius: 5,
                                            offset: Offset(0.0,
                                                0.75), // changes position of shadow
                                          ),
                                        ]),
                                    //color: Colors.black26,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.green,
                                          size: 70,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            "asadhayat2007@gmail.com",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: 300,
                                    height: 250,
                                    color: Colors.black26,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.email,
                                          color: Colors.green,
                                          size: 70,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Text(
                                            "asadhayat2007@gmail.com",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                          }),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: OnHover(builder: (isHovered) {
                              return isHovered
                                  ? Container(
                                      width: 300,
                                      height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black87,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                        Colors.white.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0.0,
                                            0.75), // changes position of shadow
                                      ),
                                    ]),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.green,
                                            size: 70,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "+92 314 6014922",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  : Container(
                                      width: 300,
                                      height: 250,
                                      color: Colors.black26,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.green,
                                            size: 70,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "+92 314 6014922",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                            }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: OnHover(builder: (isHovered) {
                              return isHovered
                                  ? Container(
                                width: 300,
                                height: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.black87,
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                        Colors.white.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0.0,
                                            0.75), // changes position of shadow
                                      ),
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.green,
                                      size: 70,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Rawalpindi, Pakistan",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              )
                                  : Container(
                                width: 300,
                                height: 250,
                                color: Colors.black26,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.green,
                                      size: 70,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Rawalpindi, Pakistan",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                          )
                        ],
                      ),
          ),
        ],
      ),
    );
  }
}
