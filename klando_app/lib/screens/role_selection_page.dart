import 'package:flutter/material.dart';
import 'package:klando_app/widgets/button_widget.dart';

class RoleSelectionPage extends StatefulWidget {
  const RoleSelectionPage({super.key});

  @override
  State<RoleSelectionPage> createState() => _RoleSelectionPageState();
}

class _RoleSelectionPageState extends State<RoleSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 150),
            child: Center(
              child: Text(
                "Are you a Driver or a Client?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
                "Help tell us who you are and how you will be using this application"),
          ),
          const SizedBox(
            height: 100,
          ),
          CustomButton(
            buttonText: "Taxi Driver",
            buttonColor: const Color(0xff06283D),
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            buttonText: "Passenger",
            buttonColor: const Color(0xff1363DF),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
