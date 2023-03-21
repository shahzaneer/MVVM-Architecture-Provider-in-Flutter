import 'package:flutter/material.dart';
import 'package:mvvm_app/utils/routes/routes_names.dart';
import 'package:mvvm_app/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, RouteNames.home);
                    Utils.flushBarErrorMessage("Pakistan", context);
                  },
                  child: Ink(
                    color: Colors.yellow,
                    child: const Text("go to Home"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
