import 'package:flutter/material.dart';

void main() {
  runApp(const OwnAIApp());
}

class OwnAIApp extends StatelessWidget {
  const OwnAIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OWN-AI',
      theme: ThemeData(
        brightness: Brightness.dark, // मॉडर्न डार्क लुक
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF121212),
      ),
      home: const WelcomeScreen(),
    );
  }
}

// 1. वेलकम और साइन-अप स्क्रीन
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              // सबसे ऊपर बड़ा लिखा हुआ
              const Text(
                "Welcome to OWN-AI",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Your Personal AI Companion",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const Spacer(),
              
              // Google Sign-up
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _navigateToHome(context),
                  icon: const Icon(Icons.g_mobiledata, size: 30),
                  label: const Text("Sign up with Google", style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 15),
              
              // Phone / Email Sign-up
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => _navigateToHome(context),
                  icon: const Icon(Icons.phone, size: 22),
                  label: const Text("Sign up with Phone / Email", style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }
}

// 2. मुख्य पेज (बिना किसी फालतू बटन के, केवल सेंटर में टेक्स्ट)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OWN-AI"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // "What do you want to do" लाइन पेज के बिल्कुल सेंटर में
      body: const Center(
        child: Text(
          "What do you want to do",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
