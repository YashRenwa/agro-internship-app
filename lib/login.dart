import 'package:agroapp/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isLoginSelected = true;

  @override
  Widget build(BuildContext context) {
    double statusHeight = MediaQuery.of(context).padding.top;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: statusHeight + height * 0.01, left: width * 0.07),
              child: Image(
                image: AssetImage("assets/Logo.png"),
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.14, right: width * 0.14),
              child: Text(
                _isLoginSelected
                    ? "SIGNIN HERE WITH US!"
                    : "GET STARTED WITH US!",
                style: TextStyle(
                  fontSize: width * 0.06,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff90a955),
                ),
              ),
            ),
            Container(
              height: height * 0.35,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: !_isLoginSelected,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: height * 0.03,
                            left: width * 0.14,
                            right: width * 0.14),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xff61676f),
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            hintText: "FIRST NAME",
                            hintStyle: TextStyle(
                              color: Color(0xff61676f),
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: !_isLoginSelected,
                      child: Container(
                        margin: EdgeInsets.only(
                            top: height * 0.03,
                            left: width * 0.14,
                            right: width * 0.14),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xff61676f),
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            hintText: "LAST NAME",
                            hintStyle: TextStyle(
                              color: Color(0xff61676f),
                              fontSize: width * 0.03,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.03,
                          left: width * 0.14,
                          right: width * 0.14),
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xff61676f),
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          hintText: "MOBILE NUMBER",
                          hintStyle: TextStyle(
                            color: Color(0xff61676f),
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.03,
                          left: width * 0.14,
                          right: width * 0.14),
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          color: Color(0xff61676f),
                          fontSize: width * 0.03,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: InputDecoration(
                          hintText: "PASSWORD",
                          hintStyle: TextStyle(
                            color: Color(0xff61676f),
                            fontSize: width * 0.03,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: _isLoginSelected,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: height * 0.03,
                          left: width * 0.14,
                          right: width * 0.14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: height * 0.02,
                                    width: height * 0.02,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.015,
                                  ),
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(
                                      fontSize: width * 0.03,
                                      color: Color(0xff61676f),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "Forgot Password",
                                style: TextStyle(
                                  fontSize: width * 0.03,
                                  color: Color(0xff90a955),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                width: width,
                padding: EdgeInsets.all(width * 0.03),
                decoration: BoxDecoration(
                  color: Color(0xffecf39e),
                  border: Border.all(
                    color: Color(0xff4f772d),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
                margin: EdgeInsets.only(
                    top: height * 0.04,
                    left: width * 0.14,
                    right: width * 0.14),
                child: Text(
                  _isLoginSelected ? "LOGIN" : "REGISTER",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.04,
                    color: Color(0xff4f772d),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Container(
              width: width,
              child: Text(
                _isLoginSelected
                    ? "Having an account then Login with Us!"
                    : "Not Yet Joined With Us?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff61676f),
                  fontSize: width * 0.025,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isLoginSelected = !_isLoginSelected;
                });
              },
              child: Container(
                width: width,
                padding: EdgeInsets.all(width * 0.03),
                decoration: BoxDecoration(
                  color: Color(0xffecf39e),
                  border: Border.all(
                    color: Color(0xff4f772d),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(width * 0.02),
                ),
                margin: EdgeInsets.only(
                    top: height * 0.01,
                    left: width * 0.14,
                    right: width * 0.14),
                child: Text(
                  _isLoginSelected ? "REGISTER" : "LOGIN",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: width * 0.04,
                    color: Color(0xff4f772d),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
