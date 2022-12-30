import 'package:avigna/screens/third.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.4,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(216, 73, 71, 0.2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.1),
                Row(children: [
                  SizedBox(width: width * 0.01),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, size: width * 0.07),
                    color: Colors.white,
                  )
                ]),
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
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: width * 0.07,
                color: const Color.fromRGBO(33, 41, 52, 1),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Shell Customer UID',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Container(
              width: width * 0.9,
              height: height * 0.07,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Color.fromRGBO(68, 68, 68, 0.12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Icon(Icons.account_circle_rounded, size: width * 0.08),
                  VerticalDivider(
                    indent: height * 0.01,
                    endIndent: height * 0.01,
                    thickness: 1,
                    color: const Color.fromRGBO(168, 168, 168, 1),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Password',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Container(
              width: width * 0.9,
              height: height * 0.07,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Color.fromRGBO(68, 68, 68, 0.12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Icon(Icons.lock_outlined, size: width * 0.08),
                  VerticalDivider(
                    indent: height * 0.01,
                    endIndent: height * 0.01,
                    thickness: 1,
                    color: const Color.fromRGBO(168, 168, 168, 1),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.64,
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: width * 0.036,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          SizedBox(height: height * 0.04),
          Center(
            child: RichText(
              text: TextSpan(
                text: 'Don’t have an account?',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1),
                ),
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: width * 0.036,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.08),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
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
