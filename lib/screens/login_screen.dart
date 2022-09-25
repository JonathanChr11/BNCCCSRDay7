import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Colors.blue,
          Colors.red,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _icon(),
            const SizedBox(height: 50),
            _usernameTextField(),
            const SizedBox(height: 50),
            _passwordTextField(),
            const SizedBox(height: 50),
            _loginBtn(),
          ],
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person, color: Colors.white, size: 120),
    );
  }

  Widget _usernameTextField() {
    return const TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'username',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _passwordTextField() {
    return const TextField(
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'password',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {},
      child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign in",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }
}
