import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.13, vertical: height * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: height * 0.005),
            child: Text(
              "SEARCH",
              style: TextStyle(
                fontSize: width * 0.05,
                fontWeight: FontWeight.w600,
                color: Color(0xff4f772d),
              ),
            ),
          ),
          SizedBox(
            width: width,
            height: height * 0.0015,
            child: Container(
              color: Color(0xffbfc3c8),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: height * 0.03),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffbfc3c8),
              ),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                Icon(
                  Icons.search,
                  color: Color(0xff4f772d),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  width: width * 0.6,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: width * 0.04,
                      color: Color(0xff90a955),
                    ),
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontSize: width * 0.04,
                        color: Color(0xff90a955),
                      ),
                      contentPadding: EdgeInsets.all(0),
                    ),
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
                  "No Results To Show!",
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Color(0xff4f772d),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
