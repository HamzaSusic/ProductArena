import 'package:flutter/material.dart';

class Patient extends StatelessWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/dedo.jpg"),
            radius: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Alen K",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("16:00 - Common cold"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
