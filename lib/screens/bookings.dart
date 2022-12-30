import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'details.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  int state = 0;

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
            Text('My Bookings', style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.02),
          Center(
            child: Container(
              height: height * 0.05,
              width: width * 0.92,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.045,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              state = 0;
                            });
                          },
                          child: Text(
                            'Pending Approvals',
                            style: TextStyle(
                              color: state == 0
                                  ? const Color.fromRGBO(216, 73, 71, 1)
                                  : const Color.fromRGBO(168, 168, 168, 1),
                              fontWeight: state == 0
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              fontSize: width * 0.03,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              state = 1;
                            });
                          },
                          child: Text(
                            'Confirmed Orders',
                            style: TextStyle(
                              color: state == 1
                                  ? const Color.fromRGBO(216, 73, 71, 1)
                                  : const Color.fromRGBO(168, 168, 168, 1),
                              fontWeight: state == 1
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              fontSize: width * 0.03,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              state = 2;
                            });
                          },
                          child: Text(
                            'Completed Orders',
                            style: TextStyle(
                              color: state == 2
                                  ? const Color.fromRGBO(216, 73, 71, 1)
                                  : const Color.fromRGBO(168, 168, 168, 1),
                              fontWeight: state == 2
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              fontSize: width * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: height * 0.005,
                          width: width * 0.26,
                          decoration: BoxDecoration(
                            color: state == 0
                                ? const Color.fromRGBO(216, 73, 71, 1)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.005,
                          width: width * 0.26,
                          decoration: BoxDecoration(
                            color: state == 1
                                ? const Color.fromRGBO(216, 73, 71, 1)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                        Container(
                          height: height * 0.005,
                          width: width * 0.26,
                          decoration: BoxDecoration(
                            color: state == 2
                                ? const Color.fromRGBO(216, 73, 71, 1)
                                : Colors.transparent,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: height * 0.02),
          state == 0
              ? Center(
                  child: Container(
                    height: height * 0.15,
                    width: width * 0.92,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '  Diesel - 12 L',
                              style: TextStyle(
                                fontSize: width * 0.055,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Rs. 30,562  ',
                              style: TextStyle(
                                fontSize: width * 0.055,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromRGBO(216, 73, 71, 1),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            SizedBox(width: width * 0.02),
                            Icon(
                              Icons.pin_drop,
                              color: Color.fromRGBO(216, 73, 71, 1),
                              size: width * 0.05,
                            ),
                            Text(
                              '#34, 2nd Cross, Kengeri RV Layout, Bengal...',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: width * 0.035,
                                  color:
                                      const Color.fromRGBO(168, 168, 168, 1)),
                            ),
                          ],
                        ),
                        Divider(
                          endIndent: width * 0.02,
                          indent: width * 0.02,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              '  Order ID: 563',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.035,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Text(
                              'Order Approval Status:',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.035,
                                color: const Color.fromRGBO(168, 168, 168, 1),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Container(
                              height: height * 0.03,
                              width: width * 0.14,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                color: Color.fromRGBO(168, 168, 168, 1),
                              ),
                              child: Center(
                                child: Text('Pending...',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.025)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : state == 1
                  ? Center(
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.92,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '  Diesel - 12 L',
                                  style: TextStyle(
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Rs. 30,562  ',
                                  style: TextStyle(
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(216, 73, 71, 1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                SizedBox(width: width * 0.02),
                                Icon(
                                  Icons.pin_drop,
                                  color: Color.fromRGBO(216, 73, 71, 1),
                                  size: width * 0.05,
                                ),
                                Text(
                                  '#34, 2nd Cross, Kengeri RV Layout, Bengal...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.035,
                                      color: const Color.fromRGBO(
                                          168, 168, 168, 1)),
                                ),
                              ],
                            ),
                            Divider(
                              endIndent: width * 0.02,
                              indent: width * 0.02,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  '  Order ID: 563',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.035,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  'Order Approval Status:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.035,
                                    color:
                                        const Color.fromRGBO(168, 168, 168, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text('Approved',
                                    style: TextStyle(
                                        color: Color.fromRGBO(216, 73, 71, 1),
                                        fontSize: width * 0.03))
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailsPage()));
                              },
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.87,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                    color: Color.fromRGBO(216, 73, 71, 1)),
                                child: Center(
                                  child: Text(
                                    'Track Order',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * 0.05),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.92,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.03),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '  Diesel - 12 L',
                                  style: TextStyle(
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  'Rs. 30,562  ',
                                  style: TextStyle(
                                    fontSize: width * 0.055,
                                    fontWeight: FontWeight.w600,
                                    color: const Color.fromRGBO(216, 73, 71, 1),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Row(
                              children: [
                                SizedBox(width: width * 0.02),
                                Icon(
                                  Icons.pin_drop,
                                  color: Color.fromRGBO(216, 73, 71, 1),
                                  size: width * 0.05,
                                ),
                                Text(
                                  '#34, 2nd Cross, Kengeri RV Layout, Bengal...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.035,
                                      color: const Color.fromRGBO(
                                          168, 168, 168, 1)),
                                ),
                              ],
                            ),
                            Divider(
                              endIndent: width * 0.02,
                              indent: width * 0.02,
                              thickness: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  '  Order ID: 563',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.035,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.1,
                                ),
                                Text(
                                  'Order Approval Status:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: width * 0.035,
                                    color:
                                        const Color.fromRGBO(168, 168, 168, 1),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  'Completed',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: width * 0.03),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            Container(
                              height: height * 0.05,
                              width: width * 0.87,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                  color: Color.fromRGBO(216, 73, 71, 1)),
                              child: Center(
                                child: Text(
                                  'View Order',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.05),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
        ],
      ),
    );
  }
}
