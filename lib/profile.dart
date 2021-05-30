import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double statusHeight = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: statusHeight),
          child: Column(
            children: [
              Container(
                height: height * 0.3 + width * 0.2,
                child: Stack(
                  children: [
                    Container(
                      height: height * 0.3,
                      width: width,
                      child: Image(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1560493676-04071c5f467b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1568&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: width * 0.07, right: width * 0.03),
                        child: AppBar(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          centerTitle: false,
                          titleSpacing: 0,
                          leading: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          ),
                          actions: [
                            GestureDetector(
                              onTap: () {
                                print("Tapped");
                                Scaffold.of(context).openEndDrawer();
                              },
                              child: Container(
                                child: Image(
                                  image: AssetImage("assets/Menu.png"),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: width * 0.3,
                      left: width * 0.3,
                      top: height * 0.2,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80",
                        ),
                        radius: width * 0.2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                width: width,
                child: Text(
                  "KERRON MADDY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    color: Color(0xff4f772d),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "80% Profile Completed",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        color: Color(0xff4f772d),
                      ),
                    ),
                    LinearProgressIndicator(
                      value: 50,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Color(0xff4f772d)),
                      backgroundColor: Color(0xffecf39e),
                    ),
                    Container(
                      width: width,
                      child: Text(
                        "Last updated Today",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          color: Color(0xff90a955),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.07),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "KERRON MADDY",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        color: Color(0xff90a955),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0015,
                      child: Container(
                        color: Color(0xff90a955),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.07),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "9876543210",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        color: Color(0xff90a955),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0015,
                      child: Container(
                        color: Color(0xff90a955),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.07),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.15),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Maharashtra, Bhandra",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        color: Color(0xff90a955),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0015,
                      child: Container(
                        color: Color(0xff90a955),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: height * 0.05),
              Container(
                width: width * 0.8,
                padding: EdgeInsets.symmetric(vertical: height * 0.01),
                decoration: BoxDecoration(
                    color: Color(0xff4f772d),
                    borderRadius: BorderRadius.circular(width * 0.02)),
                child: Text(
                  "UPDATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.04,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                    color: Color(0xffecf39e),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
