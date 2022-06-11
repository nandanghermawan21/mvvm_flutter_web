import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  final VoidCallback? onLoginSuccess;

  const LoginView({Key? key, this.onLoginSuccess}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LoginViewState();
  }
}

class LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (widget.onLoginSuccess != null) {
              widget.onLoginSuccess!();
            }
          },
          child: Container(
            color: Colors.red,
            height: 50,
            width: 100,
          ),
        ),
      ),
    );
  }
}
