import 'package:flutter/material.dart';
import 'package:weather_app/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Transition to the HomeScreen after a delay of 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,  // Changed to a more modern background color
      body: Center(
        child: AnimatedOpacity(
          opacity: 1.0,
          duration: Duration(seconds: 1), // Fade-in effect for smooth transition
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Weather Sphere",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.0,  // Modern touch for spacing
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/splash.png', 
                height: 250,  // Set a fixed height to keep the image in proportion
                width: 250,   // Ensures the image is responsive and looks neat
              ),
            ],
          ),
        ),
      ),
    );
  }
}
