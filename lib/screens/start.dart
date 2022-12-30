import 'package:avigna/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/constants.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.6,
            width: width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(216, 73, 71, 0.8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.4),
                Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
                  child: Text(
                    'Avigna\nEnterprises',
                    style: GoogleFonts.moul(
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.06,
                        color: Colors.white),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Padding(
                  padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
                  child: Text(
                    'Mobalizing your fuel needs',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: width * 0.05,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height * 0.15),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Welcome!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: width * 0.07,
                color: const Color.fromRGBO(33, 41, 52, 1),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Hello there! Click on Login to proceed',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.04,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          
          SizedBox(height: height * 0.1),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Container(
                height: height * 0.05,
                width: width * 0.9,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color.fromRGBO(216, 73, 71, 1)),
                child: Center(
                  child: Text(
                    'Login',
                    style:
                        TextStyle(color: Colors.white, fontSize: width * 0.04),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
