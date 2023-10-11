import 'package:aaaaaa/lib_module/hadith/hadith_view.dart';
import 'package:aaaaaa/lib_module/quran/quran_view.dart';
import 'package:aaaaaa/lib_module/radio/radio_view.dart';
import 'package:aaaaaa/lib_module/sebha/sebha_view.dart';
import 'package:aaaaaa/lib_module/setting_view/setting_view.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "homelayout";

  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;
  List<Widget> screens = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingView()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_light.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text("اسلامى"),
          ),
          body: screens[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            currentIndex: selectedindex,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/icons/quran.png"),
                  ),
                  label: "quran"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage("assets/icons/quran-quran-svgrepo-com.png")),
                  label: "hadith"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/sebha.png")),
                  label: "sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/icons/radio.png")),
                  label: "radio"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ],
          )),
    );
  }
}
