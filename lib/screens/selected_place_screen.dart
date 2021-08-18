import 'dart:ui';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mockupmymosq/constants/constant.dart';
import 'package:mockupmymosq/models/All_mosque.dart';

class SelectedPlaceScreen extends StatefulWidget {
  final AllModel mosque;
  SelectedPlaceScreen({Key? key, required this.mosque}) : super(key: key);

  @override
  _SelectedPlaceScreenState createState() => _SelectedPlaceScreenState(mosque);
}

class _SelectedPlaceScreenState extends State<SelectedPlaceScreen> {
  final AllModel mosque;
  _SelectedPlaceScreenState(this.mosque);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Location',
        style: GoogleFonts.lato(
          letterSpacing: .5,
          color: Colors.black
        ),
        ),
        backgroundColor: Color(0xFFFFCE66),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width * 1/ 1.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 4.0),
                  ],
                ),
                child: ClipRRect(
                  child: Image.network(
                    widget.mosque.image!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.mosque.alpha!,
                        style: GoogleFonts.lato(
                          fontSize: 20.0,
                          color: kTextColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text(
                          widget.mosque.name!,
                          style: TextStyle(
                            color: kTextColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:8.0,right:10.0),
                        child: Text(
                          widget.mosque.description!,
                          style: GoogleFonts.lato(
                            fontSize: 12.0,
                            color: kTextColor,
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:20.0),
                        child: SizedBox(
                        height: 45.0,
           child: DefaultTabController(
             length: 7,
             child: TabBar(
                      indicatorWeight: 0.1,
                        isScrollable: true,
                        tabs: [
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.local_drink,size: 18.0,color: kTextColor,),
                                  Text('F&B',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Ionicons.print,size: 18.0,color: kTextColor,),
                                  Text('Print',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(EvaIcons.wifi,size: 18.0,color: kTextColor,),
                                  Text('Wifi',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(EvaIcons.phoneCall,size: 18.0,color: kTextColor,),
                                  Text('Call booth',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Ionicons.car,size: 18.0,color: kTextColor,),
                                  Text('Transportation',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(EvaIcons.messageCircle,size: 18.0,color: kTextColor,),
                                  Text('Support services',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(EvaIcons.calendar,size: 18.0,color: kTextColor,),
                                  Text('Weekly events',style: TextStyle(fontSize: 12.0,color: kTextColor,)),
                                ],
                              ),
                            ),
                          ),
                        ],
                    ),
           ),
                        ),
                      )
                    ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
