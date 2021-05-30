import 'package:flutter/material.dart';

class StateUpdate extends StatefulWidget {
  @override
  _StateUpdateState createState() => _StateUpdateState();
}

class _StateUpdateState extends State<StateUpdate> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: height * 0.03,
            right: height * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80",
                    ),
                    radius: height * 0.02,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pritpal Singh",
                        style: TextStyle(
                            fontSize: width * 0.035,
                            color: Color(0xff3f5893),
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sponsored ·",
                            style: TextStyle(
                                fontSize: width * 0.03,
                                color: Color(0xff3f5893),
                                fontWeight: FontWeight.w400),
                          ),
                          Image(
                              height: height * 0.02,
                              image: NetworkImage(
                                  "https://atlas-content-cdn.pixelsquid.com/stock-images/black-and-white-globe-shape-PxlzYO7-600.jpg"))
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
                child: Text(
                  "I bought all the needs for my agricultural land in the nearby KumKum market and started the ploughing",
                  style: TextStyle(
                    fontSize: width * 0.03,
                    color: Color(0xff61676f),
                    height: 1.5,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Read more",
                  style: TextStyle(
                      fontSize: width * 0.025,
                      color: Color(0xff3f5893),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: height * 0.005),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(width * 0.01),
                      border: Border.all(
                        color: Color(0xffbfc3c8),
                      ),
                    ),
                    child: Text(
                      "Shop Now",
                      style: TextStyle(
                          fontSize: width * 0.03,
                          color: Color(0xff1e2128),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                margin: EdgeInsets.only(bottom: height * 0.007),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        "1,148",
                        style: TextStyle(
                          color: Color(0xff61676f),
                          fontSize: width * 0.035,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "55 Comments",
                        style: TextStyle(
                          color: Color(0xff61676f),
                          fontSize: width * 0.035,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "11 Shares",
                        style: TextStyle(
                          color: Color(0xff61676f),
                          fontSize: width * 0.035,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height * 0.0005,
                child: Container(
                  color: Color(0xffbfc3c8),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.007),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Like",
                            style: TextStyle(
                              color: Color(0xff61676f),
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/wpflike.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Comments",
                            style: TextStyle(
                              color: Color(0xff61676f),
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/fecomment.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            "Share",
                            style: TextStyle(
                              color: Color(0xff61676f),
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/Share (2).png"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
