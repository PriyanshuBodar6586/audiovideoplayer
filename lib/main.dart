
import 'package:audiovideoplayer/audio/firstscreen.dart';
import 'package:audiovideoplayer/audio/topProvider.dart';
import 'package:audiovideoplayer/audio/topscreen.dart';
import 'package:audiovideoplayer/sharedprefrence/introscreen.dart';
import 'package:audiovideoplayer/sharedprefrence/login_page.dart';
import 'package:audiovideoplayer/sharedprefrence/new_accountpage.dart';
import 'package:audiovideoplayer/spleshScreen.dart';
import 'package:audiovideoplayer/tabbarscreen.dart';
import 'package:audiovideoplayer/video/imageprovider.dart';
import 'package:audiovideoplayer/video/sceondVideoscreen.dart';
import 'package:audiovideoplayer/video/videoProviderScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'video/firstVideoscreen.dart';

void main() {

  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<top_Provider>(create: (context) =>top_Provider(),),
        ListenableProvider<main_provider>(create: (context) =>main_provider(),),
        ListenableProvider<Image_Provider>(create: (context) =>Image_Provider(),),
      ],
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        //initialRoute: 'new',
        routes: {
          '/':(context)=>splesh_Screen(),
          'new':(context)=>NewAcount_Screen(),
          'log':(context)=>Login_Screen(),
          'home':(context)=>homescreen(),
          'tab':(context)=>TabBarview_Screen(),
          'firat':(context)=>first_Screen(),
          'fir':(context)=>First_Screen(),
          'sec':(context)=>Second_Screen(),
          'intro':(context)=>intro_Screen(),

        },
      )
    ),
  );
}

