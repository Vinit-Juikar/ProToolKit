import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:protoolkit/Screens/code.dart';
import 'package:protoolkit/Screens/js_converter.dart';
import 'package:protoolkit/Screens/signature_detection.dart';
import 'package:protoolkit/Screens/sql_request.dart';
import 'package:protoolkit/data/image_data.dart';
import 'package:protoolkit/data/text_home_screen.dart';
import 'ai_screen.dart';
import 'contact.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ProToolKit",
              style: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 18)),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignatureDetection()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[0],
                          fit: BoxFit.fitWidth,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[0],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AiScreenForTranslator()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[1],
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[1],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Code()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[2],
                          fit: BoxFit.fill,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[2],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Contact()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[3],
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[3],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JsConverter()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[4],
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[4],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SQL()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 7, vertical: 20),
                    height: 251,
                    width: 191,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          HomeScreenImages[5],
                          fit: BoxFit.cover,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            child: Center(
                              child: Text(
                                HomeScreenText[5],
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.red, Colors.blue]),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
