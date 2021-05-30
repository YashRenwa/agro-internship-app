import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: width * 0.13, vertical: height * 0.015),
                child: Text(
                  "NOTIFICATIONS",
                  style: TextStyle(
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4f772d),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: width * 0.03),
                child: Image(
                  image: AssetImage("assets/Vector-2.png"),
                ),
              )
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
                  "No Notifications To Show!",
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
    );
  }
}
