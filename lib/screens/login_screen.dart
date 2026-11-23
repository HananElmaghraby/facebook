
import 'package:flutter/material.dart';
import '/cores/app_colors.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            children: [

              SizedBox(height: 65),

              Image.asset(
                'assets/images/facebook_logo.png',
                width: 75,
                height: 75,
              ),

              SizedBox(height: 55),

              // Email Text Field

              TextFormField(
                cursorColor: AppColors.blue,

                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                ),

                decoration: InputDecoration(
                  hintText: 'Mobile Number or Email Address',

                  hintStyle: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                  ),

                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding: EdgeInsets.all(16),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                      width: 2,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                      width: 2,
                    ),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Password Text Field

              TextFormField(
                obscureText: true,
                cursorColor: AppColors.blue,

                decoration: InputDecoration(
                  hintText: 'Password',

                  hintStyle: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16,
                  ),

                  filled: true,
                  fillColor: AppColors.white,
                  contentPadding: EdgeInsets.all(16),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                      width: 2,
                    ),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                      width: 2,
                    ),
                  ),

                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: AppColors.red,
                      width: 2,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Login Button

              SizedBox(
                width: double.infinity,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                    overlayColor: Colors.transparent,
                    padding: EdgeInsets.all(16),
                    elevation: 0,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),

                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                'Forgotten Password ?',
                style: TextStyle(
                  color: AppColors.gray,
                  fontSize: 14,
                ),
              ),

              Spacer(),

              // Create Account Button

              SizedBox(
                width: double.infinity,

                child: OutlinedButton(
                  onPressed: () {},

                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.blue,
                    padding: EdgeInsets.all(16),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),

                    side: BorderSide(
                      color: AppColors.blue,
                    ),
                  ),

                  child: Text('Create Account'),
                ),
              ),

              SizedBox(height: 15),

              Image.asset(
                'assets/images/meta_logo.png',
                width: 90,
                height: 30,
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
