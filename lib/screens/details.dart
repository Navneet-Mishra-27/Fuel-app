import 'package:flutter/material.dart';
import '../utils/constants.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
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
            Text(
              'Order Details',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                height: height * 0.6,
                width: width * 0.92,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      '    Order ID: 564',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      endIndent: width * 0.03,
                      indent: width * 0.03,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Shell Customer UID:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' 982671',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Customer Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' Mr. Satish Kumar',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Order Date:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' 25.04.2022',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.08,
                        width: width * 0.87,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              left: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              bottom:
                                  BorderSide(width: 1, color: Colors.black)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '    Requirement',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '   Diesel - 14 L',
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.09,
                        width: width * 0.87,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              left: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              bottom:
                                  BorderSide(width: 1, color: Colors.black)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Text(
                              '    Delivery Date',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '   27th Apr, 2022  10:00 AM',
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.09,
                        width: width * 0.87,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              left: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              bottom:
                                  BorderSide(width: 1, color: Colors.black)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Text(
                              '    Purpose',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '   Truck Refuel',
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.12,
                        width: width * 0.87,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          border: Border(
                              top: BorderSide(width: 1, color: Colors.black),
                              left: BorderSide(width: 1, color: Colors.black),
                              right: BorderSide(width: 1, color: Colors.black),
                              bottom:
                                  BorderSide(width: 1, color: Colors.black)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: height * 0.012,
                            ),
                            Text(
                              '    Delivery Location',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '   Kengeri, Bengaluru',
                              style: TextStyle(
                                  fontSize: width * 0.05,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: height * 0.01,
                            ),
                            Text(
                              '    #27, 2nd Cross, Mylasandra',
                              style: TextStyle(
                                fontSize: width * 0.03,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                height: height * 0.25,
                width: width * 0.92,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      '    Driver Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      endIndent: width * 0.03,
                      indent: width * 0.03,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Driver Name:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' Mr. Punish Yadav ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Manager ID:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' PUY8967',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '    Email ID:',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.036,
                          color: const Color.fromRGBO(168, 168, 168, 1),
                        ),
                        children: [
                          TextSpan(
                            text: ' punish@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: width * 0.036,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                height: height * 0.23,
                width: width * 0.92,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      '    Payment Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: width * 0.035,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Divider(
                      endIndent: width * 0.03,
                      indent: width * 0.03,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '   Diesel Charges',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.036,
                            color: const Color.fromRGBO(168, 168, 168, 1),
                          ),
                        ),
                        Text(
                          'Rs. 27,000   ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.036,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '   Extra Delivery Fee',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.036,
                            color: const Color.fromRGBO(168, 168, 168, 1),
                          ),
                        ),
                        Text(
                          'Rs. 1,002   ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.036,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '   Tax Amount',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.036,
                            color: const Color.fromRGBO(168, 168, 168, 1),
                          ),
                        ),
                        Text(
                          'Rs. 1,560   ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.036,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '  Total Price:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: width * 0.05,
                            color: const Color.fromRGBO(168, 168, 168, 1),
                          ),
                        ),
                        Text(
                          'Rs. 30,562  ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: width * 0.05,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Center(
              child: Container(
                height: height * 0.05,
                width: width * 0.92,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                    color: Color.fromRGBO(216, 73, 71, 1)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Download Invoice  ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.w700),
                      ),
                      const Icon(Icons.file_download, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
