import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockupmymosq/constants/constant.dart';
import 'package:mockupmymosq/models/All_mosque.dart';
import 'package:mockupmymosq/models/events.dart';
import 'package:mockupmymosq/screens/selected_place_screen.dart';

class EventScreens extends StatefulWidget {
  const EventScreens({Key? key}) : super(key: key);

  @override
  _EventScreensState createState() => _EventScreensState();
}

class _EventScreensState extends State<EventScreens> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: events.length,
              itemBuilder: (context,index) {
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      height: 140.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      child: Positioned(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Opacity(
                            opacity: 0.56,
                            child: Image(
                              width: 372.0,
                              height: 141.0,
                              image: NetworkImage(
                                events[index].image!
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                     Positioned(
                      left: 30.0,
                      bottom: 60.0,
                      child: Column(
                        children: <Widget>[
                          Text(events[index].date!,
                          style: GoogleFonts.lato(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30.0,
                      bottom: 43.5,
                      child: Column(
                        children: <Widget>[
                          Text(events[index].title!,
                          style: GoogleFonts.lato(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2
                          ),
                          maxLines: 2,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 30.0,
                      bottom: 15.0,
                      child: Column(
                        children: <Widget>[
                        Container(
                          width: 120.0,
                          child: Text(events[index].description!,
                          style: GoogleFonts.lato(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          ),
                          ),
                      ],
                      ),
                    ),
                          Positioned(
                            bottom: 12.0,
                            right: 25.0,
                            child: Container(
                              padding: EdgeInsets.only(left: 15.0),
                              width: 80.0,
                              height: 20.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3.0)
                              ),
                              child: Text('Register',
                              style: GoogleFonts.lato(
                                color: kTextColor,
                              ),
                              ),
                            ),
                          )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
