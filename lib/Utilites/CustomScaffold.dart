import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {

  final String title;
  final Widget body;
  final Icon icon;

  const CustomScaffold(
      {Key key, @required this.title, @required this.body, this.icon,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 500,
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              IconButton(icon: icon, onPressed: () {})
            ],
          ),
          body: body,
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: 2,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    title: Text('Speakers')),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.access_time,
                  ),
                  title: Text('Agenda')
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  title: Text('Home')
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.supervisor_account,
                  ),
                  title: Text('Teams')
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.attach_money,
                  ),
                  title: Text('Sponsors')
                ),
              ],
            onTap: (index){},
          ),
        ),
      ),
    );
  }
}


