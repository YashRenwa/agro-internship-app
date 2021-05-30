import 'package:agroapp/district_update.dart';
import 'package:agroapp/state_update.dart';
import 'package:agroapp/taluka_update.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _isStateUpdateSelected = true;
  bool _isDistrictUpdateSelected = false;
  bool _isTalukaUpdateSelected = false;

  Widget buildMainWidget() {
    if (_isStateUpdateSelected) {
      return StateUpdate();
    } else if (_isDistrictUpdateSelected) {
      return DistrictUpdate();
    } else {
      return TalukaUpdate();
    }
  }

  @override
  Widget build(BuildContext context) {
    double statusHeight = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isStateUpdateSelected = true;
                        _isDistrictUpdateSelected = false;
                        _isTalukaUpdateSelected = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                        color: _isStateUpdateSelected
                            ? Color(0xff4f772d)
                            : Color(0xffecf39e),
                        borderRadius: BorderRadius.circular(width * 0.01),
                      ),
                      child: Text(
                        "State Update",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: _isStateUpdateSelected
                              ? Color(0xffecf39e)
                              : Color(0xff1e2128),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isStateUpdateSelected = false;
                        _isDistrictUpdateSelected = true;
                        _isTalukaUpdateSelected = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                        color: _isDistrictUpdateSelected
                            ? Color(0xff4f772d)
                            : Color(0xffecf39e),
                        borderRadius: BorderRadius.circular(width * 0.01),
                      ),
                      child: Text(
                        "District Update",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: _isDistrictUpdateSelected
                              ? Color(0xffecf39e)
                              : Color(0xff1e2128),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isStateUpdateSelected = false;
                        _isDistrictUpdateSelected = false;
                        _isTalukaUpdateSelected = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                        color: _isTalukaUpdateSelected
                            ? Color(0xff4f772d)
                            : Color(0xffecf39e),
                        borderRadius: BorderRadius.circular(width * 0.01),
                      ),
                      child: Text(
                        "Taluka Update",
                        style: TextStyle(
                          fontSize: width * 0.03,
                          color: _isTalukaUpdateSelected
                              ? Color(0xffecf39e)
                              : Color(0xff1e2128),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(height * 0.02),
              margin: EdgeInsets.all(height * 0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(width * 0.02),
                border: Border.all(
                  width: 2,
                  color: Color(0xffbfc3c8),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: width * 0.07,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80"),
                  ),
                  SizedBox(
                    width: width * 0.035,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Write Something Here...",
                          style: TextStyle(
                            fontSize: width * 0.04,
                          ),
                        ),
                        Text(
                          "Eg: Authentic, Today's day is energetic and awesome",
                          style: TextStyle(
                            fontSize: width * 0.03,
                            color: Color(0xffbfc3c8),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            buildMainWidget(),
          ],
        ),
      ),
    );
  }
}
