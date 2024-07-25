///MARK: RUN THE APP WITH 
///flutter run --dart-define GEMINI_KEY=<>
///WHILE using DART Define to fetch API key for Gemini 

import 'package:flutter/material.dart';
import 'constants/strings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/screen_home_page.dart';
import 'constants/palette.dart';

void main() {
 runApp( const ProviderScope(child: MyApp()) );
}
final palette = Provider((ref) => Palette());
 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      //    SystemChrome.setPreferredOrientations([
      //   DeviceOrientation.portraitUp,
      //   DeviceOrientation.portraitDown,
      // ]);
       final palette = Palette();
    return MaterialApp(
      title: kGameTitle,
      theme: ThemeData(
  
        colorScheme: ColorScheme.fromSeed(seedColor: palette.kDeepPurpleAccent),
        useMaterial3: true,
      ),
      home: const ScreenHomePage(),
    );
  }
}
