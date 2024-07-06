import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Function to show a SnackBar for successful login notification
    void showLoginNotification() {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('You have successfully logged in!'),
          duration: Duration(seconds: 2), // Adjust the duration as needed
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/images.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              color: Colors.black.withOpacity(0.2),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/images/tscott.jpeg"), // Change to your profile image asset path
                      ),
                    ),
                    const Text(
                      'Welcome, Muhammad Pilar!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        backgroundColor: Color.fromARGB(255, 69, 174, 156).withOpacity(0.8),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/about');
                      },
                      child: const Text("About"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        backgroundColor: Color.fromARGB(255, 73, 168, 154).withOpacity(0.8),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/wisata');
                      },
                      child: const Text("Planet"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        backgroundColor: Color.fromARGB(255, 75, 162, 151).withOpacity(0.8),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/informasiSatelit');
                        showLoginNotification(); // Show login notification when navigating
                      },
                      child: const Text("Informasi Satelit"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
