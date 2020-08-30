import 'package:flutter/material.dart';
import 'package:gdg_2020/Utilites/CustomScaffold.dart';

class SpeakerScreen extends StatefulWidget {
  @override
  _SpeakerScreenState createState() => _SpeakerScreenState();
}

class _SpeakerScreenState extends State<SpeakerScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Speakers',
      icon: Icon(
        Icons.share,
        color: Colors.black,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder:(BuildContext context , int index){
            return Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.2,
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                  child: ListTile(),
                ),
              ),
            );
          }
      ),
    );
  }
}
