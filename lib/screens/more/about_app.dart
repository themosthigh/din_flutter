import 'package:din/components/back_button.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About the app"),
        leading: const CustomBackButton(),
      ),
    );
  }
}
