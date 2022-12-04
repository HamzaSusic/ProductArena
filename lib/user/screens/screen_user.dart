import 'package:flutter/material.dart';
import 'package:tech387/auth/login_page.dart';
import 'package:tech387/user/widgets/patient.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //appBar
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Log Out"),
                            content: Text(
                                "Are you sure you want to log out from the console?"),
                            actions: [
                              TextButton(
                                child: Text("No"),
                                onPressed: () => Navigator.pop(context),
                              ),
                              TextButton(
                                child: Text("Yes"),
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  20,
                  30,
                  30,
                  20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/doktor.jpg"),
                      radius: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "Dr. Jon Doe",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Patient list for today",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet isto
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //kraj kartice
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //ovdje tommorow
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: Row(
                        children: [
                          Text(
                            "Tommorow",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    //opet
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet issto
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet tommorow
                    //ovdje tommorow
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      child: Row(
                        children: [
                          Text(
                            "Tommorow",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    //opet
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet issto
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                    //opet
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Patient()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
