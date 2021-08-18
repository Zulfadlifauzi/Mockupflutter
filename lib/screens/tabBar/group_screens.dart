import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockupmymosq/constants/constant.dart';
import 'package:mockupmymosq/models/groups.dart';

class GroupScreens extends StatefulWidget {
  const GroupScreens({Key? key}) : super(key: key);

  @override
  _GroupScreensState createState() => _GroupScreensState();
}

class _GroupScreensState extends State<GroupScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(right: 5.0, top: 10.0),
        height: double.infinity,
        child: ListView.builder(
          itemCount: groupsy.length,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(30.0, 5.0, 10.0, 5.0),
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100.0, 10.0, 20.0, 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 8.0),
                          width: 120.0,
                          child: Text(
                            groupsy[index].title!,
                            style: TextStyle(
                                fontSize: 15.0,
                                color: kTextColor,
                                fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            groupsy[index].description!,
                            style: TextStyle(color: kTextColor),
                          ),
                        ),
                          Container(
                            padding: EdgeInsets.only(left: 15.0),
                            width: 60.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(1.0)
                            ),
                            margin: EdgeInsets.only(left: 190.0,top: 20.0),
                            child: Text('Join',
                            style: GoogleFonts.lato(
                              color: Colors.white,
                            )
                            ,
                            ),
                          ),
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
                      image: NetworkImage(
                        groupsy[index].image!,
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
    );
  }
}
