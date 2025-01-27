import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  static const String name = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          context.go('/');
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.deepPurple, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                    'https://lacvets.com/wp-content/uploads/2023/01/what-is-a-cats-lifespan-lakeland-fl-scaled.jpg',
                    fit: BoxFit.cover,
                  ),
              const SizedBox(height: 20),
              const Text(
                'Cat app by Vi',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Toca para continuar',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
