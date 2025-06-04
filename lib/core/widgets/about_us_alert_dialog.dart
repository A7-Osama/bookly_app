import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kPrimaryColor,
      title: const Text(
        "About The Developer",
        style: TextStyle(color: kSecondaryColor),
      ),
      content: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Developer: ", style: TextStyle(color: kSecondaryColor)),
              Text("Ahmad Me3yad"),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Major: ", style: TextStyle(color: kSecondaryColor)),
              Text("Android App Developer"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Contact:- ", style: TextStyle(color: kSecondaryColor)),
            ],
          ),
          SizedBox(height: 5),
          Text("     ao699168@gmail.com"),
          Text("     +(967) 774-188-043"),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            "Close",
            style: TextStyle(
              color: kSecondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
