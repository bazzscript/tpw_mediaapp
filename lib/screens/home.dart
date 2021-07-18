import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:tpw_mediaapp/widgets/message_card.dart';
import 'package:tpw_mediaapp/widgets/message_tile.dart';
import 'package:tpw_mediaapp/widgets/service_type_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('🔥media'),
        actions: [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10),
              Badge(
                badgeColor: Colors.red,
                position: BadgePosition.topEnd(),
                badgeContent: Text(
                  '2',
                ),
                alignment: Alignment.center,
                child: Icon(Icons.notifications_none_outlined),
              ),
              SizedBox(width: 14),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 45, right: 15.0, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TypeOfService(
                    serviceInitial: 'A',
                    nameOfService: 'Sunday service',
                    color: Colors.purple.shade200,
                  ),
                  TypeOfService(
                    serviceInitial: 'F',
                    nameOfService: 'Faith Clinic',
                    color: Colors.blue,
                  ),
                  TypeOfService(
                    serviceInitial: 'P',
                    nameOfService: 'Prayer service',
                    color: Color.fromRGBO(120, 95, 130, 1.0),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade900,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'View',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'All',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Uploaded',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text('See All',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 17,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.only(right: 15.0, bottom: 45, left: 15),
                child: Row(
                  children: [
                    MessageCard(
                      messageBanner: 'image/Worship.jpg',
                      messageDuration: '03:10',
                      messageSpeaker: 'Pst EbCe',
                      messageTitle: 'Stronghold',
                    ),
                    MessageCard(
                      messageBanner: 'image/sundayservice.jpg',
                      messageDuration: '02:34',
                      messageSpeaker: 'Pst EbCe',
                      messageTitle: 'Priesthood',
                    ),
                    MessageCard(
                      messageBanner: 'image/resurrection.jpg',
                      messageDuration: '01:12',
                      messageSpeaker: 'Pst EbCe',
                      messageTitle: 'Priesthood',
                    ),
                    MessageCard(
                      messageBanner: 'image/pavi.png',
                      messageDuration: '01:34',
                      messageSpeaker: 'Pst EbCe',
                      messageTitle: 'Priesthood',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Played',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text('See All',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 17,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            MessageTile(
              messageTitle: 'Mental Health',
              messageSpeaker: 'EbCe',
              messageDuration: '01:14',
            ),
            SizedBox(height: 12),
            MessageTile(
              messageTitle: 'Parenting',
              messageSpeaker: 'EbCe',
              messageDuration: '01:14',
            ),
            SizedBox(height: 45),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wifi),
              label: "Live Audio",
              // backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Favourite",
              // backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "Profile",
              // backgroundColor: Colors.black,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          elevation: 0.0,
          fixedColor: Colors.white,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              print(_selectedIndex);
            });
          }),
    );
  }
}
