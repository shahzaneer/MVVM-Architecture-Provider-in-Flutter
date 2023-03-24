import 'package:flutter/material.dart';
import 'package:mvvm_app/res/widgets/coloors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final bool loading;
  const RoundButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Ink(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.buttonColor),
        child: loading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Center(
                child: Text(
                  title.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
