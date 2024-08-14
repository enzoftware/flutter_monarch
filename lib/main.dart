import 'package:flutter/material.dart';
import 'package:flutter_monarch/name_request_screen.dart';
import 'package:flutter_monarch/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MonarchApp Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: NameRequestScreen.route,
      routes: {
        NameRequestScreen.route: (_) => NameRequestScreen(),
        WelcomeScreen.route: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as WelcomeScreenRouteArgs;
          return WelcomeScreen(name: args.name);
        }
      },
    );
  }
}
