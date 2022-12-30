import 'package:flutter/material.dart';
import '../utils/constants.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1),
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
            Text('Book Fuel Truck',
                style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Select Fuel Option',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.005),
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
                    '  Diesel',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
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
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Quantity',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.005),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * 0.06,
                  width: width * 0.45,
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
                        '  12',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Color.fromRGBO(168, 168, 168, 1),
                      )
                    ],
                  ),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.45,
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
                        '  Litres',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Color.fromRGBO(168, 168, 168, 1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Delivery Date',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.005),
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
                    '  24/2/2022',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.calendar_month_sharp,
                    color: Color.fromRGBO(168, 168, 168, 1),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Purpose / Machinery',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.005),
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
                    '  Truck Refuel',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
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
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Select Delivery City',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.005),
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
                    '  Bengaluru',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
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
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
            child: Text(
              'Set Exact Delivery Location',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.036,
                  color: const Color.fromRGBO(168, 168, 168, 1)),
            ),
          ),
          SizedBox(height: height * 0.2),
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
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
                  'Confirm Details',
                  style: TextStyle(color: Colors.white, fontSize: width * 0.04),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
