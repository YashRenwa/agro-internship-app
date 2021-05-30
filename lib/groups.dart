import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  @override
  _GroupsState createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  bool _joinedGroupsSelected = true;
  bool _joinGroupsSelected = false;

  Widget joinGroupCard(double height, double width, String name, String image) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: height * 0.013, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: height * 0.07,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(height * 0.006),
                  child: Image(
                    image: NetworkImage(image),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: width * 0.08),
                width: width * 0.25,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width * 0.03,
                    letterSpacing: 0.5,
                    color: Color(0xff4f772d),
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xff90a955),
                borderRadius: BorderRadius.circular(height * 0.008)),
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.01,
            ),
            child: Text(
              "Join",
              style: TextStyle(
                fontSize: width * 0.03,
                letterSpacing: 0.5,
                color: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget joinGroups(double height, double width) {
    return Container(
      child: Column(
        children: [
          joinGroupCard(height, width, "Glossier Farmers",
              "https://images.unsplash.com/photo-1594117782204-5c398aa0e330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
          joinGroupCard(height, width, "Hyderabad Farmers",
              "https://images.unsplash.com/photo-1594117782204-5c398aa0e330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
          joinGroupCard(height, width, "Firahal Creepers",
              "https://images.unsplash.com/photo-1594117782204-5c398aa0e330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
          joinGroupCard(height, width, "Finhari Makers",
              "https://images.unsplash.com/photo-1594117782204-5c398aa0e330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
          joinGroupCard(height, width, "Lipi Peeps",
              "https://images.unsplash.com/photo-1594117782204-5c398aa0e330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHwyfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60"),
        ],
      ),
    );
  }

  Widget joinedGroups(double height, double width) {
    return Container(
      width: width,
      height: height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No Groups To Show!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff4f772d),
              fontWeight: FontWeight.w600,
              fontSize: width * 0.04,
            ),
          ),
        ],
      ),
    );
  }

  Widget showSelectedWidget(double height, double width) {
    if (_joinGroupsSelected) {
      return joinGroups(height, width);
    } else {
      return joinedGroups(height, width);
    }
  }

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
              "GROUPS",
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
            margin: EdgeInsets.only(top: height * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _joinedGroupsSelected = true;
                      _joinGroupsSelected = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(width * 0.02),
                    decoration: BoxDecoration(
                      color: _joinedGroupsSelected
                          ? Color(0xff4f772d)
                          : Color(0xffecf39e),
                      borderRadius: BorderRadius.circular(width * 0.01),
                    ),
                    child: Text(
                      "Joined Groups",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        color: _joinedGroupsSelected
                            ? Color(0xffecf39e)
                            : Color(0xff4f772d),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.06,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _joinGroupsSelected = true;
                      _joinedGroupsSelected = false;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(width * 0.02),
                    decoration: BoxDecoration(
                      color: _joinGroupsSelected
                          ? Color(0xff4f772d)
                          : Color(0xffecf39e),
                      borderRadius: BorderRadius.circular(width * 0.01),
                    ),
                    child: Text(
                      "Join Groups",
                      style: TextStyle(
                        fontSize: width * 0.03,
                        color: _joinGroupsSelected
                            ? Color(0xffecf39e)
                            : Color(0xff4f772d),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          showSelectedWidget(height, width),
        ],
      ),
    );
  }
}
