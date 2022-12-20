import 'dart:html';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:recycle_it/models/menus.dart';
import 'package:recycle_it/models/products_details.dart';
import 'package:recycle_it/pages/Settings.dart';
import 'package:recycle_it/pages/about.dart';
import 'package:recycle_it/pages/codes_Page.dart';
import 'package:recycle_it/pages/contactus_page.dart';
import 'package:recycle_it/pages/login_page.dart';
import 'package:recycle_it/pages/plastic_display.dart';
import 'package:recycle_it/pages/productsPage.dart';
import 'package:recycle_it/pages/products_display.dart';
import 'package:recycle_it/pages/recycling_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.shopping_cart,
                  size: 26.0,
                ),
              )),
        ],
        iconTheme: IconThemeData(color: Color.fromARGB(255, 99, 0, 238)),
        title: Center(
          child: Text(
            "Recycle It",
            style: GoogleFonts.bebasNeue(
              fontSize: 52,
              color: Color.fromARGB(255, 99, 0, 238),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      //Drawer
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 99, 0, 238),
              ),
              child: Center(
                child: Text(
                  'Main menu',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            ////Home
            ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text(
                'Home Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return HomePage();
                })));
                // Update the state of the app.
                // ...
              },
            ),
            ////Settings
            // ListTile(
            //   leading: Icon(
            //     Icons.settings_outlined,
            //     color: Color.fromARGB(255, 138, 168, 161),
            //   ),
            //   title: Text(
            //     'Settings',
            //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //   ),
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: ((context) {
            //       return Settings();
            //     })));
            //     // Update the state of the app.
            //     // ...
            //   },
            // ),

            ///About
            ListTile(
              leading: Icon(
                Icons.schedule_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text('About',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return About();
                })));
                // Update the state of the app.
                // ...
              },
            ),
            ////Codes
            ListTile(
              leading: Icon(
                Icons.discount_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text('Codes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return CodesPage();
                })));
                // Update the state of the app.
                // ...
              },
            ),
            ////Recycling
            ListTile(
              leading: Icon(
                Icons.recycling_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text('Recycling',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return RecyclingPage();
                })));
                // Update the state of the app.
                // ...
              },
            ),
            ////contact
            ListTile(
              leading: Icon(
                Icons.contact_page_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text('Contact Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return ContactPage();
                })));
                // Update the state of the app.
                // ...
              },
            ),
            ////Login
            ListTile(
              leading: Icon(
                Icons.door_back_door_outlined,
                color: Color.fromARGB(255, 138, 168, 161),
              ),
              title: Text('Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return LoginPage();
                })));
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      ////////////body
      body: Center(
        child: SafeArea(
          child: Stack(children: [
            // Positioned(
            //   right: 5,
            //   child: Image.asset(
            //     "assets/images/homePage.jpg",
            //     width: 500,
            //     height: 250,
            //   ),
            // ),
            Positioned(
              left: 186,
              bottom: 280,
              child: Container(
                  margin: EdgeInsets.only(bottom: 0),
                  child: SizedBox.fromSize(
                    size: Size(180, 180),
                    child: Column(
                      children: [
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return ProductsDisplay();
                              })));
                            },
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Image.asset(
                                    "assets/icons/puzzle_2_1.png",
                                    color: (Color.fromARGB(255, 138, 168, 161)),
                                    width: 170,
                                    height: 170,
                                  ),
                                ),
                                Positioned(
                                  left: 50,
                                  top: 80,
                                  child: Text(
                                    "Products",
                                    style: GoogleFonts.bebasNeue(
                                        fontSize: 35,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                                // <-- Icon
                                // <-- Text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 260,
              left: 160,
              child: Container(
                  margin: EdgeInsets.only(bottom: 0),
                  child: SizedBox.fromSize(
                    size: Size(180, 180),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return PlasticDisplay();
                          })));
                        },
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: Image.asset(
                                "assets/icons/puzzle_2_3.png",
                                color: (Color.fromARGB(255, 99, 0, 238)),
                                width: 170,
                                height: 170,
                              ),
                            ), // <-- Icon
                            Positioned(
                              left: 35,
                              top: 80,
                              child: Text(
                                "Plactic",
                                style: GoogleFonts.bebasNeue(
                                    fontSize: 35,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ), // <-- Text
                          ],
                        ),
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
      ////bottom
      // bottomNavigationBar: CurvedNavigationBar(
      //     backgroundColor: Colors.white,
      //     color: Color.fromARGB(255, 54, 0, 179),
      //     items: [
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: ((context) {
      //             return CodesPage();
      //           })));
      //         },
      //         child: Icon(
      //           Icons.discount,
      //           color: Colors.white,
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: ((context) {
      //             return RecyclingPage();
      //           })));
      //         },
      //         child: Icon(
      //           Icons.recycling,
      //           color: Colors.white,
      //         ),
      //       ),
      //       InkWell(
      //         onTap: () {
      //           Navigator.push(context, MaterialPageRoute(builder: ((context) {
      //             return ContactPage();
      //           })));
      //         },
      //         child: Icon(
      //           Icons.contact_page,
      //           color: Colors.white,
      //         ),
      //       )
      //     ]),

      /////bottom 2
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 54, 0, 179),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              padding: EdgeInsets.all(15),
              gap: 10,
              backgroundColor: Color.fromARGB(255, 54, 0, 179),
              color: Colors.white,
              activeColor: Color.fromARGB(255, 54, 0, 179),
              tabBackgroundColor: Colors.white,
              tabs: [
                GButton(
                  icon: Icons.discount,
                  text: "codes",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return CodesPage();
                    })));
                  },
                ),
                GButton(
                  icon: Icons.recycling,
                  text: "Recycling",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return RecyclingPage();
                    })));
                  },
                ),
                GButton(
                  icon: Icons.contact_mail,
                  text: "contact",
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return ContactPage();
                    })));
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
