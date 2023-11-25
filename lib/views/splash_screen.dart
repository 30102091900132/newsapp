import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/views/home_page.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  _SplashViewBodyState createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    Timer(Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => HomePage(),),
    ), ); }
  //
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey,
     body: FadeTransition(
        opacity: fadingAnimation!,
        child: Center(
          child: const Text(
            'General News',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }


}