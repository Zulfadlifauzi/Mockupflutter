import 'dart:ui';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockupmymosq/models/All_mosque.dart';
import 'package:mockupmymosq/models/events.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MyMosq'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.portrait_sharp,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Color(0xFFFFCE66),
      ),
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'Friends',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'Find your friend from different MyMosque.',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(5.0)),
                      contentPadding: EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          EvaIcons.searchOutline,
                          color: Colors.grey[500],
                          size: 20.0,
                        ),
                        onPressed: () {},
                      ),
                      labelText: 'Search for a Mosque..',
                      hintStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                      labelStyle: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)),
                  autocorrect: false,
                  onChanged: (text) {
                    text = text.toLowerCase();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                child: Text(
                  'Locations',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(
                  left: 10.0,
                  top: 5.0,
                ),
                child: DefaultTabController(
                  length: 14,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    indicatorPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                    isScrollable: true,
                    labelColor: Color(0xFF000000),
                    unselectedLabelColor: Color(0xFF8a8a8a),
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    indicatorColor: Color(0xFF000000),
                    indicatorWeight: 2.2,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text('All'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Johor'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Kedah'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Kelantan'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Malacca'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Negeri Sembilan'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Pahang'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Penang'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Perak'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Perlis'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Sabah'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Sarawak'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Selangor'),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text('Terangganu'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  // ignore: null_check_always_fails
                  children: List.generate(
                    allmosque.length,
                    (int index) => Container(
                      margin: EdgeInsets.only(right: 28.8),
                      width: 333.6,
                      height: 218.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(allmosque[index].image!))),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 10.0,
                            left: 5.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.8),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaY: 5.2, sigmaX: 5.2),
                                child: Container(
                                  height: 36,
                                  padding: EdgeInsets.only(
                                    left: 16.72,
                                    right: 14.4,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        'assets/svg/redlocation.svg',
                                        color: Colors.white,
                                        width: 12.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        allmosque[index].name!,
                                        style: GoogleFonts.lato(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 28.8, top: 15.0),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: allmosque.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF8a8a8a),
                      dotColor: Color(0xFFababab),
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 4.8),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured Events',
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),
                     Text(
                      'Find events that interest you',
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        color: Color(0xFF000000),
                      ),
                    ),
                      ],
                    ),

                    Text(
                      'Show All',
                      style: GoogleFonts.lato(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8a8a8a),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(right: 20.0,top: 10.0),
                  height: 200.0,
                  child: ListView.builder(
                    itemCount: events.length,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 5.0),
                            height: 120.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(100.0, 10.0, 20.0, 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.only(left: 8.0),
                                        width: 120.0,
                                        child: Text(events[index].title!,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w700
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:8.0),
                                        child: Text(events[index].description!),
                                      )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 30.0,
                            top: 5.0,
                            bottom: 5.0,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.0),
                              child: Image(
                                width: 100.0,
                                image: NetworkImage(events[index].image!,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                        ],
                        
                      );
                    },
                  ),
                  ),
            ]),
      ),
    );
  }
}
