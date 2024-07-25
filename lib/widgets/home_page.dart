import 'package:flutter/material.dart';
import 'package:three_things_game_activities/constants/palette.dart';
import 'package:three_things_game_activities/constants/strings.dart';
import 'package:three_things_game_activities/screens/breath_screen.dart';
import 'package:three_things_game_activities/screens/fear_todo_list_screen.dart';
import 'package:three_things_game_activities/screens/fear_setting_main_screen.dart';
import 'package:three_things_game_activities/screens/gratitude_screen.dart';
import 'package:three_things_game_activities/screens/ground_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  final screens = [
    BreathScreen(),
      GroundScreen(),
    GratitudeScreen(),
    FearSettingMainScreen(),
    FearTodoListScreen(),
    // SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final palette = Palette();
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: selectedIndex, 
          children: screens,)
          ,),
               bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: palette.trueWhite,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bakery_dining_sharp),
            label: kBreath,
            backgroundColor: palette.kDarkestGray,
           
          ),
                BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: kGrounding,
            backgroundColor: palette.kDarkestGray,
           
          ),
 BottomNavigationBarItem(
            
            icon: Icon(Icons.nature_people_outlined),
            label: kGratitude,
          ),
// BottomNavigationBarItem(
//             icon: Icon(Icons.wine_bar_sharp),
//             label: kMind,          
//           ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_applications_sharp),
            label: kFear,
           
          ),
                BottomNavigationBarItem(
            icon: Icon(Icons.bakery_dining_sharp),
            label: kTodo,
            backgroundColor: palette.kDarkestGray,
           
          ),
        ],
      ),
    );
  }
}
