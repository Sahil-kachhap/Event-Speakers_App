import 'dart:ui';

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget Customchild;

  const CustomCard({Key key, this.Customchild}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.23,
        child: Card(
          //elevation: 10,
          shape:
             RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Customchild,
          ),
        ),
      ),
    );
  }
}
