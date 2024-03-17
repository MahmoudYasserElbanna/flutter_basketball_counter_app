import 'package:flutter/material.dart';

class CustomTextTeamName extends StatelessWidget {
  const CustomTextTeamName({super.key, required this.teamName});
  final String teamName;
  @override
  Widget build(BuildContext context) {
    return Text(
      teamName,
      style: const TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
