import 'package:avigna/screens/book.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class PricesPage extends StatefulWidget {
  const PricesPage({Key? key}) : super(key: key);

  @override
  State<PricesPage> createState() => _PricesPageState();
}

class _PricesPageState extends State<PricesPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(33, 41, 52, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: width * 0.07),
          color: Colors.white,
        ),
        title: Row(
          children: const [
            Text('Fuel Prices', style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height * 0.02),
          Center(
            child: Container(
              height: height * 0.18,
              width: width * 0.92,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color.fromRGBO(216, 73, 71, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.06),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.04, 0, 0, 0),
                    child: Text(
                      'Check out our Fuel Rates!',
                      style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Padding(
                    padding: EdgeInsets.fromLTRB(width * 0.04, 0, 0, 0),
                    child: Container(
                      height: height * 0.05,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(height * 0.1),
                          ),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          'Starting at Rs. 100',
                          style: TextStyle(
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Center(
            child: Container(
              height: height * 0.06,
              width: width * 0.92,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    '  Check prices for your location',
                    style: TextStyle(
                      color: Color.fromRGBO(168, 168, 168, 1),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Color.fromRGBO(168, 168, 168, 1),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BookPage()));
            },
            child: Center(
              child: Container(
                height: height * 0.06,
                width: width * 0.92,
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
                            color: Colors.white, fontSize: width * 0.04),
                      ),
                      SizedBox(width: width * 0.48),
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
    );
  }
}
