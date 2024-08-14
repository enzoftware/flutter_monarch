import 'package:flutter/material.dart';
import 'package:flutter_monarch/welcome_screen.dart';

class NameRequestScreen extends StatelessWidget {
  NameRequestScreen({super.key});

  static const route = '/';

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter your name, please!'),
              const SizedBox(height: 8),
              TextField(controller: controller),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    WelcomeScreen.route,
                    arguments: WelcomeScreenRouteArgs(
                      name: controller.text,
                    ),
                  );
                },
                child: const Text('Start'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
