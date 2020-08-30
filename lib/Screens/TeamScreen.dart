import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_2020/Utilites/CustomCard.dart';
import 'package:gdg_2020/Utilites/CustomScaffold.dart';
import 'package:gdg_2020/Utilites/Global.dart';

class TeamScreen extends StatefulWidget {
  @override
  _TeamScreenState createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: 'Teams',
        icon: Icon(Icons.search,color: Colors.black,),
        body: FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString(Devfest.json_file),
            builder: (context, snapshot) {
              var myData = json.decode(snapshot.data.toString());
              return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(
                      Customchild: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Image(
                            image: AssetImage(myData[index]['image']),
                            fit: BoxFit.cover,
                            color: Colors.black54,
                            colorBlendMode: BlendMode.darken,
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0,bottom: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      myData[index]['name'],
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Colors.white,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.facebookF,
                                              color: Colors.white,
                                            ),
                                            onPressed: (){}
                                            ),
                                        IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.linkedin,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(FontAwesomeIcons.twitter,
                                                color: Colors.white),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.meetup,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.instagram,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {})
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                    );
                  });
            }));
  }

  canLaunch(url) {}
}
