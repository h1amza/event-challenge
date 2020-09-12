import 'package:flutter/material.dart';
import 'mainPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => MainPage()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/1.png'),
                Container(
                  width: 250,
                  height: 5,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.blue[700],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.amber[400]),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
