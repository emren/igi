import 'package:flutter/material.dart';
import 'package:igi/services/size_config.dart';
import 'package:igi/widgets/basvuru_widget.dart';
import 'package:igi/widgets/tab_aldigim.dart';
import 'package:igi/widgets/tab_doping.dart';
import 'package:igi/widgets/tab_egitim.dart';
import 'package:igi/widgets/tab_ilan.dart';

class UyelikPaketleri extends StatefulWidget {
  @override
  _UyelikPaketleriState createState() => _UyelikPaketleriState();
}

class _UyelikPaketleriState extends State<UyelikPaketleri> with SingleTickerProviderStateMixin {
  TabController _tabController;
  SizeConfig c = SizeConfig();

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: c.height(50),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: c.height(50),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: c.width(20.0)),
                      child: Container(
                        width: c.width(10.7412109375),
                        height: c.height(18.764892578125),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icons/back_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: c.width(10)),
                      child: Text(
                        "geri",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(12),
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: c.width(170.0)),
                      child: Text(
                        "üyelik paketleri",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xff000000),
                          fontSize: c.font(20),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: c.height(20),
            ),
            TabBar(
              labelColor: Color(0xff000000),
              unselectedLabelColor: Color(0xff000000),
              indicatorColor: Color(0xffffd500),
              indicatorWeight: 5,
              labelStyle: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff000000),
                fontSize: c.font(14),
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
              tabs: <Widget>[
                Tab(
                  //icon: Icon(Icons.add),
                  text: 'İlan Paketleri',
                ),
                Tab(
                  //icon: Icon(Icons.clear),
                  text: 'Dopingler',
                ),
              ],
              controller: _tabController,
            ),
            Container(
              //color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .75,
              child: TabBarView(
                children: <Widget>[
                  TabIlan(),
                  TabDoping(),
                ],
                controller: _tabController,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
