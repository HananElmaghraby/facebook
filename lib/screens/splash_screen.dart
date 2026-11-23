
import 'package:flutter/material.dart';
import '/cores/app_colors.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Column(
        children: [

          Spacer(),

          Center(
            child: Image.asset(
              'assets/images/facebook_logo.png',
              width: 75,
              height: 75,
            ),
          ),

          Spacer(),

          Column(
            children: [

              Text(
                'From',
                style: TextStyle(
                  color: AppColors.gray,
                  fontSize: 14,
                ),
              ),

              SizedBox(height: 5),

              Image.asset(
                'assets/images/meta_logo.png',
                width: 90,
                height: 30,
              ),

              SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}
