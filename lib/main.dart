// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: DrawerThemeData(scrimColor: Colors.transparent)),
      title: 'New Whatsapp UI',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Messages',
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Online',
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Groups',
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More',
                          style: TextStyle(color: Colors.grey, fontSize: 26),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 8, left: 25, right: 25),
              height: 220,
              decoration: BoxDecoration(
                  color: Color(0xFF27C1A9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorite contacts',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_horiz_rounded,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvatar('Alla', 'img1.jpeg'),
                        buildContactAvatar('July', 'img2.jpeg'),
                        buildContactAvatar('Mikle', 'img3.jpeg'),
                        buildContactAvatar('Kler', 'img4.jpg'),
                        buildContactAvatar('Moane', 'img5.jpeg'),
                        buildContactAvatar('Julie', 'img6.jpeg'),
                        buildContactAvatar('Allen', 'img7.jpeg'),
                        buildContactAvatar('John', 'img8.jpg'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color(
                    0xFFEFFFFC,
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  children: [
                    buildConversationRow(
                        'Laura', 'Hello, how are you', 'img1.jpeg', 0),
                    buildConversationRow(
                        'Kalya', 'Will you visit me', 'img2.jpeg', 2),
                    buildConversationRow(
                        'Mary', 'I ate your ...', 'img3.jpeg', 6),
                    buildConversationRow(
                        'Hellen', 'Are you with Kayla again', 'img5.jpeg', 0),
                    buildConversationRow(
                        'Louren', 'Barrow money please', 'img6.jpeg', 3),
                    buildConversationRow('Tom', 'Hey, whatsup', 'img7.jpeg', 0),
                    buildConversationRow(
                        'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                    buildConversationRow(
                        'Laura', 'Helle, how are you', 'img1.jpeg', 0),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        width: 55,
        height: 55,
        child: FloatingActionButton(
            backgroundColor: Color(0xFF27c1a9),
            child: Icon(
              Icons.edit_outlined,
              size: 30,
            ),
            onPressed: () {}),
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black26,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xF71F1E1E),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20, color: Color(0x3D000000), spreadRadius: 30),
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 56,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        UserAvatar(fileName: 'my.jpg'),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Dhruv Gupta',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    drawerItem(title: 'Account', icon: Icons.key),
                    drawerItem(title: 'Chats', icon: Icons.chat_bubble),
                    drawerItem(
                        title: 'Notifications', icon: Icons.notifications),
                    drawerItem(title: 'Data Storage', icon: Icons.storage),
                    drawerItem(title: 'Help', icon: Icons.help),
                    Divider(
                      height: 35,
                      color: Colors.green,
                    ),
                    drawerItem(
                        title: 'Invite a friend', icon: Icons.people_outlined),
                  ],
                ),
                drawerItem(title: 'Logout', icon: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String message, filename, int msgCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                UserAvatar(fileName: filename),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  Text(
                    '16.35',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (msgCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xFF27c1a9),
                      child: Text(
                        msgCount.toString(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
        Divider(
          indent: 70,
        )
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvatar(
            fileName: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

class drawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const drawerItem({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),
            SizedBox(
              width: 56,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String fileName;
  const UserAvatar({
    super.key,
    required this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 31,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$fileName').image,
      ),
    );
  }
}
