import 'package:flutter/material.dart';

import '../widgets/animated_hover_widget.dart';

class SignUpSubmitButtonComponent extends StatelessWidget {
  const SignUpSubmitButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedHoverWidget(
      size: const Size(88.0, 48.0),
      curve: Curves.fastOutSlowIn,
      offset: const Offset(6, 6),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF556124),
          foregroundColor: const Color(0xFFD9E1BE),
          elevation: 0,
          minimumSize: const Size(88.0, 48.0),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
        child: const Text("Sign Up"),
      ),
    );
  }
}
