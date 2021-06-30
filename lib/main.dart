import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:recet_mom/src/pages/home_page.dart';
import 'package:recet_mom/src/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recet_mom/src/provider/google_sign_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Proyecto - DAM2',
          theme: ThemeData(
              textTheme:
                  GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          home: HomePage(),
        ),
      );
}
