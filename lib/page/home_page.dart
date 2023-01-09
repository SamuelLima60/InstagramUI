import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instaui/widgets/bubble_story_widget.dart';
import 'package:instaui/widgets/post_data_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const List<String> _data = [
    'Gabriel',
    'Samuel',
    'Italo',
    'Vinicius',
    'Ricardo',
  ];

  static const List _dataPost = [
    ['@SamuelLima', '45', 'Aqui qualquer ttextoooo'],
    ['@FelipeCarvalho', '35', 'Adadsadsquissadaad qualquer dsadsadsadas'],
    ['@Viniciusdacosta', '55', 'AAAAAAAAAAAA'],
  ];

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    void onItemTapped(int value) {
      setState(() {
        selectedIndex = value;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Instagram',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/img/add.svg',
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/img/like.svg',
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/img/share.svg',
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/img/home.svg',
              color: Colors.white,
              height: 25,
              width: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/img/search.svg',
              color: Colors.white,
              height: 25,
              width: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/img/reels.svg',
              color: Colors.white,
              height: 25,
              width: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/img/shop.svg',
              color: Colors.white,
              height: 25,
              width: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: SvgPicture.asset(
              'assets/img/user.svg',
              color: Colors.white,
              height: 25,
              width: 25,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: HomePage._data.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return BubbleStory(name: HomePage._data[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: HomePage._dataPost.length,
              itemBuilder: (ctx, index) {
                return PostData(
                  name: HomePage._dataPost[index][0],
                  likes: HomePage._dataPost[index][1],
                  text: ' ${HomePage._dataPost[index][2]}\n\n',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
