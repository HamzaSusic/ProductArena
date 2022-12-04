import 'package:flutter/material.dart';
import 'package:tech387/user/screen_user.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Form(
        key: _signInFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ),
            Container(
                height: 80,
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('Log In'),
                    onPressed: () {
                      if (_emailController.text == "career@tech387.com" &&
                          _passwordController.text == "Pass123!")
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserScreen()),
                        );
                      else {
                        const SnackBar(
                          content: Text(
                            "Pogrešan email ili password!",
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        );
                      }
                    })),
          ],
        ),
      )),
    );
  }
}
