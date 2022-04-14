import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:airplane/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
   Timer(Duration(seconds: 3), (){
     Navigator.pushNamed(context, '/get-started');
     // Navigator.push(
     //   context, MaterialPageRoute(builder: (context) => GetStartedPage(),
     //    ),
     // );
   });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_plane.png',
                  ),
                ),
              ),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}