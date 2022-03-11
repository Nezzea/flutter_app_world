import 'package:flutter/material.dart';
import 'package:flutter_app_world/views/signin_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // TODO: implement initState
    // หน่วงเวลาหน้าจอ
    Future.delayed(
      Duration(
        seconds: 5,
      ),
      // เมื่อครบแล้วให้ทำอะไร
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignInUI(),
        ),
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/msu_logo1.png',
                  height: 200,
                ),
                Text(
                  'มหาวิทยาลัยมหาสารคาม',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.deepOrange[900],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CircularProgressIndicator(
                  color: Colors.black,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Text(
                'Created By IT-MSU 2022',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
