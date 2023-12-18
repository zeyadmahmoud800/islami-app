import 'package:flutter/material.dart';
import 'package:islami_app/home/quan/hadeth_tab.dart';
import 'package:islami_app/home/quan/quran_tab.dart';
import 'package:islami_app/home/quan/radio_tab.dart';
import 'package:islami_app/home/quan/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Hmome_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
                currentIndex: SelectIndex,
                onTap: (index) {
                  SelectIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/quran.png'),
                      ),
                      label: 'quran'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/Hadeth.png'),
                      ),
                      label: 'Hadeth'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/sebha.png'),
                      ),
                      label: 'Sebha'),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/radio.png'),
                      ),
                      label: 'Radio'),
                ]),
          ),
          body: tabs [SelectIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    Quran_tab(),Hadeth_tab(),Radio_tab(),Tasbeh_tab()
  ];
}
