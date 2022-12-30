import 'package:avigna/screens/bookings.dart';
import 'package:avigna/screens/prices.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 41, 52, 1),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              'Avigna\nEnterprises',
              style: GoogleFonts.moul(
                  fontWeight: FontWeight.w400,
                  fontSize: width * 0.021,
                  color: Colors.white),
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.02),
          Center(
            child: Container(
              height: height * 0.25,
              width: width * 0.92,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.02, 0, 0, 0),
                    child: Text(
                      'Want to Get Fuel Delivered At Your Door Step?',
                      style: TextStyle(
                          color: const Color.fromRGBO(33, 41, 52, 1),
                          fontSize: width * 0.063,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.02, 0, 0, 0),
                    child: Text(
                      'Book Your Fuel Truck Today!',
                      style: TextStyle(
                          color: const Color.fromRGBO(168, 168, 168, 1),
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PricesPage(),
                        ),
                      );
                    },
                    child: Center(
                      child: Container(
                        height: height * 0.05,
                        width: width * 0.87,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                            color: Color.fromRGBO(216, 73, 71, 1)),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(width: width * 0.02),
                              Text(
                                'Book Fuel Truck',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04),
                              ),
                              SizedBox(width: width * 0.42),
                              Icon(
                                Icons.arrow_forward,
                                size: width * 0.07,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PricesPage(),
                    ),
                  );
                },
                child: Container(
                  height: height * 0.13,
                  width: width * 0.28,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(68, 68, 68, 0.12),
                          offset: Offset(0.0, 7.0),
                          blurRadius: 20.0,
                          spreadRadius: 0.0)
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Icon(
                        Icons.local_gas_station_outlined,
                        size: width * 0.12,
                        color: const Color.fromRGBO(216, 73, 71, 1),
                      ),
                      SizedBox(height: height * 0.01),
                      const Text(
                        'Fuel Rates',
                        style: TextStyle(
                          color: Color.fromRGBO(168, 168, 168, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingsPage(),
                    ),
                  );
                },
                child: Container(
                  height: height * 0.13,
                  width: width * 0.28,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(68, 68, 68, 0.12),
                          offset: Offset(0.0, 7.0),
                          blurRadius: 20.0,
                          spreadRadius: 0.0)
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.02),
                      Icon(
                        Icons.view_list_sharp,
                        size: width * 0.12,
                        color: const Color.fromRGBO(216, 73, 71, 1),
                      ),
                      SizedBox(height: height * 0.01),
                      const Text(
                        'My Bookings',
                        style: TextStyle(
                          color: Color.fromRGBO(168, 168, 168, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: height * 0.13,
                width: width * 0.28,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(68, 68, 68, 0.12),
                        offset: Offset(0.0, 7.0),
                        blurRadius: 20.0,
                        spreadRadius: 0.0)
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.02),
                    Icon(
                      Icons.shield,
                      size: width * 0.12,
                      color: const Color.fromRGBO(216, 73, 71, 1),
                    ),
                    SizedBox(height: height * 0.01),
                    const Text(
                      'Shell Account',
                      style: TextStyle(
                        color: Color.fromRGBO(168, 168, 168, 1),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
