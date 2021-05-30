import 'package:agroapp/alerts.dart';
import 'package:agroapp/groups.dart';
import 'package:agroapp/home.dart';
import 'package:agroapp/message.dart';
import 'package:agroapp/profile.dart';
import 'package:agroapp/search.dart';
import 'package:agroapp/state_update.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  Widget _currentWidget() {
    if (index == 0) {
      return Home();
    } else if (index == 1) {
      return Messages();
    } else if (index == 2) {
      return Search();
    } else if (index == 3) {
      return Groups();
    } else {
      return Alerts();
    }
  }

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
        endDrawer: Drawer(
            child: Container(
          height: height,
          width: width,
          color: Color(0xffecf39e),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: statusHeight + height * 0.02),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: width * 0.04),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1350&q=80",
                          ),
                          radius: height * 0.018,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.only(right: width * 0.04),
                        child: Image(
                          image: AssetImage("assets/Menu.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: width * 0.05,
                    top: height * 0.05,
                    right: width * 0.05),
                child: Column(
                  children: [
                    Container(
                      width: width,
                      child: Text(
                        "Hello!",
                        style: TextStyle(
                          fontSize: width * 0.08,
                          color: Color(0xff90a955),
                        ),
                      ),
                    ),
                    Container(
                      width: width,
                      child: Text(
                        "KERRON MADDY",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          color: Color(0xff4f772d),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    SizedBox(
                      height: height * 0.002,
                      child: Container(
                        color: Color(0xffbfc3c8),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: height * 0.03),
                      width: width,
                      child: Text(
                        "SOCIAL",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          color: Color(0xff4f772d),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "Messages",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Chat@2x.png"),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "Notifications",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Vector.png"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.002,
                      child: Container(
                        color: Color(0xffbfc3c8),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: height * 0.03),
                      width: width,
                      child: Text(
                        "FAVOURITES",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          color: Color(0xff4f772d),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "News Feed",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Newsfeed@2x.png"),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "Saved Post",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Save@2x.png"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.002,
                      child: Container(
                        color: Color(0xffbfc3c8),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: height * 0.03),
                      width: width,
                      child: Text(
                        "EXPLORE",
                        style: TextStyle(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                          color: Color(0xff4f772d),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "People",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Vector-1@2x.png"),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      title: Text(
                        "Groups",
                        style: TextStyle(
                          fontSize: width * 0.04,
                          color: Color(0xff61676f),
                        ),
                      ),
                      trailing: ImageIcon(
                        AssetImage("assets/Groups@2x.png"),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.002,
                      child: Container(
                        color: Color(0xffbfc3c8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
        body: Builder(builder: (context) {
          return Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: width * 0.07, right: width * 0.03),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  centerTitle: false,
                  titleSpacing: 0,
                  title: Container(
                    child: Image(
                      image: AssetImage("assets/Logo.png"),
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

              // Replace your code.. Sharan and Abhi
              _currentWidget(),
            ],
          );
        }),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (int index) {
            setState(() {
              this.index = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                child: Image(
                  image: AssetImage("assets/fluenthome-24-filled.png"),
                ),
              ),
              activeIcon: Container(
                child: Image(
                  image: AssetImage("assets/fluenthome-24-filled.png"),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                child: Image(
                  image: AssetImage("assets/bxbxs-message.png"),
                ),
              ),
              activeIcon: Container(
                child: Image(
                  image: AssetImage("assets/bxbxs-message.png"),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                child: Image(
                  image: AssetImage("assets/evasearch-fill.png"),
                ),
              ),
              activeIcon: Container(
                child: Image(
                  image: AssetImage("assets/evasearch-fill.png"),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                child: Image(
                  image: AssetImage("assets/fa-soliduser-friends.png"),
                ),
              ),
              activeIcon: Container(
                child: Image(
                  image: AssetImage("assets/fa-soliduser-friends.png"),
                ),
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Container(
                child: Image(
                  image:
                      AssetImage("assets/icbaseline-notifications-active.png"),
                ),
              ),
              activeIcon: Container(
                child: Image(
                  image:
                      AssetImage("assets/icbaseline-notifications-active.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
