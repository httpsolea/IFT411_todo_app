import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Expanded(
              child: Center(
                child: Lottie.asset(
                  'lib/assets/Check mark - Success animation.json', // Path to your json file
                  width: 300,
                ),
              ),
            ),

            // 2. Simple Title/Text
            const Text(
              "Daily Planner",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text("Organize your life simply."),

            // 3. The "Get Started" Button
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'tasks'),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}