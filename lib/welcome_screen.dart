import 'package:flutter/material.dart';

class WelcomeScreenRouteArgs {
  final String name;

  WelcomeScreenRouteArgs({required this.name});
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.name, this.age});

  final String name;
  final int? age;

  static const route = 'welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome $name'),
            const SizedBox(height: 8),
            if (age != null && age! > 0) Text('Age: $age'),
          ],
        ),
      ),
    );
  }
}
