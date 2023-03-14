import 'package:flutter/material.dart';

import '../widgets/animated_hover_widget.dart';

class SignUpEmailTextFieldComponent extends StatelessWidget {
  const SignUpEmailTextFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: AnimatedHoverWidget(
        size: const Size(360.0, 56),
        hoverColor: Colors.white,
        bgColor: Colors.white,
        border: Border.all(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          child: TextFormField(
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Enter e-mail",
            ),
          ),
        ),
      ),
    );
  }
}
