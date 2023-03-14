import 'package:flutter/material.dart';

import '../widgets/animated_hover_widget.dart';

class SignUpPasswordTextFieldComponent extends StatelessWidget {
  const SignUpPasswordTextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedHoverWidget(
      size: const Size(360.0, 56),
      hoverColor: Colors.white,
      bgColor: Colors.white,
      border: Border.all(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: TextFormField(
          onSaved: (password) {},
          obscureText: true,
          decoration: const InputDecoration(
            hintText: "Enter password",
          ),
        ),
      ),
    );
  }
}
