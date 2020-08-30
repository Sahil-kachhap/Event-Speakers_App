import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gdg_2020/Utilites/CustomScaffold.dart';
import 'package:gdg_2020/Utilites/Global.dart';
import 'package:gdg_2020/Utilites/ImageCard.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Home',
      icon: Icon(Icons.share,color: Colors.black,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ImageCard(img: Devfest.banner_light,),
              SizedBox(
                height: 20.0,
              ),
              Text(Devfest.welcomeText,style: Theme.of(context).textTheme.headline,textAlign: TextAlign.center,),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left:12.0,right:12.0),
                child: Text(Devfest.descText,style: Theme.of(context).textTheme.caption,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
