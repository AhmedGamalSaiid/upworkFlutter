import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:upwork/View/components/Talent/Active.dart';
import 'package:upwork/View/components/Talent/Archived.dart';
import 'package:upwork/constanse.dart';

class ProposalsPage extends StatefulWidget {
  @override
  _ProposalsPageState createState() => _ProposalsPageState();
}

class _ProposalsPageState extends State<ProposalsPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF1E4355),
            title: Center(
              child: Text(
                'Proposals',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xFF8ACC5E),
              labelColor: Color(0xFF8ACC5E),
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Active'),
                Tab(text: 'Archived'),
              ],
            ),
          ),
          body: TabBarView(children: <Widget>[
            ActiveBody(),
            ArchivedBody(),
          ]),
          bottomNavigationBar: _buildOriginDesign(),
        ));
  }

  Widget _buildOriginDesign() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: bgUpwork,
      strokeColor: Colors.white,
      unSelectedColor: Color(0xff6c788a),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text(
            "Jobs",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 12),
          ),
          selectedTitle: Text(
            "Jobs",
            style: TextStyle(color: bgUpwork, fontSize: 14),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.description),
          title: Text(
            "Proposals",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Proposals",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.assignment_turned_in_sharp),
          title: Text(
            "Contracts",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Contracts",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text(
            "Messages",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Messages",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined),
          title: Text(
            "Alerts",
            style: TextStyle(color: Color(0xff6c788a), fontSize: 11),
          ),
          selectedTitle: Text(
            "Jobs",
            style: TextStyle(color: bgUpwork, fontSize: 13),
          ),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
