import 'package:flutter/material.dart';
import 'colors.dart' as color;

/*
//start of the text "My account" which is centered and bold
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "My Account",
              style: TextStyle(
                height: 10,
                fontSize: 30,
                color: color.AppColor.homePageTitle,
                fontWeight: FontWeight.bold, 
              ),
            ))
          ],
        ),
      ),
    );
  }
}

//Start of background and profile avatar using network 
// ignore: camel_case_types
class background extends StatefulWidget {
  const background({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _backgroundState createState() => _backgroundState();
}

// ignore: camel_case_types
class _backgroundState extends State<background> {
  final double coverHeight = 280;
  final double profileHeight = 140;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
        body: Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    )
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'data:image/jpeg;base64,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',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );
  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI8DK8HCuvWNyHHg8enmbmmf1ue4AeeF3GDw&usqp=CAU',
        ),
      );
}
*/
//creation of tab bar - unsuccessful
class tab_bar extends StatefulWidget {
  const tab_bar({super.key});

  @override
  State<tab_bar> createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> with TickerProviderStateMixin {
  List images = [
    "",
    "",
    "",
  ];

  get child => null;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: Container(
      child: TabBar(tabs: [
        Tab(
          text: "Lookbooks",
        ),
        Tab(
          text: "Bookmarks",
        ),
        Tab(
          text: "Following",
        ),
      ], children: [
        TabBarView(
          children: [Text('Hi'), Text('Hi'), Text('Hi')],
        ),
      ]),
    ));
  }
}
//hello

