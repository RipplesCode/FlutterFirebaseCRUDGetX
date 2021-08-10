import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Firestore CRUD",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        accentColor: Colors.yellow,
        primaryColor: Color(0xff141A31),
        primaryColorDark: Color(0xff081029),
        scaffoldBackgroundColor: Color(0xff141A31),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.yellow),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
          ),
        ),
      ),
    ),
  );
}
