import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  bool _isNewMessageSelected = false;

  Widget buildMessageView(double height, double width) {
    if (_isNewMessageSelected) {
      return Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(
              left: width * 0.13,
              top: width * 0.02,
              bottom: width * 0.02,
            ),
            child: Text(
              " NEW MESSAGE",
              style: TextStyle(
                color: Color(0xff4F772D),
                fontSize: width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: width * 0.13),
            height: height * 0.0025,
            width: width * 0.7,
            color: Color(0xffBEC3C8),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                height * 0.02, height * 0.03, height * 0.02, height * 0.03),
            width: width,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff90a955)),
              borderRadius: BorderRadius.circular(width * 0.04),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: width * 0.05),
                  margin: EdgeInsets.all(width * 0.02),
                  width: width * 0.8,
                  child: Text(
                    "To:",
                    style: TextStyle(
                      color: Color(0xffBEC3C8),
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.0015,
                  color: Color(0xffECF39E),
                ),
                Container(
                  margin: EdgeInsets.all(width * 0.02),
                  height: height * 0.45,
                  width: width * 0.8,
                  child: Text(
                    "Write a New Message",
                    style: TextStyle(
                      color: Color(0xffBEC3C8),
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.0015,
                  color: Color(0xffECF39E),
                ),
                Container(
                  width: width * 0.8,
                  child: Text(
                    "Attachments",
                    style: TextStyle(
                      color: Color(0xffBEC3C8),
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.04,
                    ),
                  ),
                ),
                Container(
                  height: height * 0.05,
                  width: width * 0.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("assets/Group 6.png"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      );
    } else {
      return Expanded(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.13, vertical: height * 0.015),
                      child: Text(
                        "MESSAGES",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4f772d),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: width * 0.13, vertical: height * 0.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width,
                        height: height * 0.0015,
                        child: Container(
                          color: Color(0xffbfc3c8),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No Messages To Show!",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff4f772d),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(right: width * 0.05),
                child: Container(
                  height: height * 0.08,
                  width: width * 0.12,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _isNewMessageSelected = true;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: width * 0.08,
                    ),
                    backgroundColor: Color(0xff4F772D),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return buildMessageView(height, width);
  }
}
