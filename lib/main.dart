import 'package:basketball_counter_app/Widgets/custom_elevated_button.dart';
import 'package:basketball_counter_app/Widgets/custom_team_text.dart';
import 'package:basketball_counter_app/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasketballCounterApp());

class BasketballCounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // To Remove Red Box On Top Right Corner
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Center(
          child: Text(
            'Counter Application',
            style: TextStyle(fontSize: 24, fontFamily: 'YoungSerif'),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Column(
                children: [
                  const CustomTextTeamName(teamName: 'Team A'),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: 142,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomElevatedButton(points: 'Add 1 Point'),
                  CustomElevatedButton(points: 'Add 2 Point'),
                  CustomElevatedButton(points: 'Add 3 Point'),
                ],
              ),
              /* ------------------------ */
              const SizedBox(
                height: 400,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Column(
                children: [
                  CustomTextTeamName(teamName: 'Team B'),
                  Text(
                    '0',
                    style: const TextStyle(
                      fontSize: 142,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  CustomElevatedButton(points: 'Add 1 Point'),
                  CustomElevatedButton(points: 'Add 2 Point'),
                  CustomElevatedButton(points: 'Add 3 Point'),
                ],
              ),
            ]),
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {},
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
