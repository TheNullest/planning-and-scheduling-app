import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView({required this.title, required this.icon, super.key});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
