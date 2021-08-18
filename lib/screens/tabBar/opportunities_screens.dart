import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockupmymosq/constants/constant.dart';
import 'package:mockupmymosq/models/All_mosque.dart';
import 'package:mockupmymosq/models/opportunity.dart';
import 'package:mockupmymosq/screens/selected_place_screen.dart';

class OpportunitiesScreen extends StatefulWidget {
  const OpportunitiesScreen({Key? key}) : super(key: key);

  @override
  _OpportunitiesScreenState createState() => _OpportunitiesScreenState();
}

class _OpportunitiesScreenState extends State<OpportunitiesScreen> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            physics: BouncingScrollPhysics(),
        children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:25.0),
                child: Container(
                  child: Text('Hiring',style: GoogleFonts.lato(
                    color: Colors.green.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),),
                ),
              ),
               Container(
                height: 260.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  // ignore: null_check_always_fails
                  children: List.generate(
                    chance.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen(
                                mosque: allmosque[index],
                                ),
                                ),
                                );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 35.0),
                        width: 333.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade900,
                        ),
                  ],
                ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: 
                                    [Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left:10.0,top: 10.0),
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                child: Text(
                                                  chance[index].date!,
                                                  style: GoogleFonts.lato(
                                                      color: Colors.white,
                                                      fontSize: 12.0),
                                                ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:10.0,top: 5.0),
                                      child: Container(
                                        child: Text(
                                              chance[index].title!,
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 20.0),
                                            ),
                                      ),
                                    ),
                                     Padding(
                                      padding: const EdgeInsets.only(left:10.0,top: 5.0),
                                      child: Container(
                                        width: 130.0,
                                        height: 18.0,
                                        padding: EdgeInsets.only(left: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(1.0),
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                              chance[index].alpha!,
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.bold,
                                                  color: kTextColor,
                                                  fontSize: 12.0),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0,left: 10.0,right: 10.0),
                                      child: Container(
                                        child: Text(
                                              chance[index].description!,
                                              style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                  fontSize: 12.0),
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                           Positioned(
                                      bottom: 20.0,
                                      right: 20.0,
                                      child: Container(
                                        child: Text(chance[index].info!,
                                        style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                        ),
                                        ),
                                      ),
                                    )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

        ],
      ),
      ),
    );
  }
}
