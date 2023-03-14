import 'package:flutter/material.dart';

import '../widgets/animated_hover_widget.dart';

class SignUpNameTextFieldComponent extends StatelessWidget {
  const SignUpNameTextFieldComponent({super.key});

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
          onSaved: (name) {},
          decoration: const InputDecoration(
            hintText: "Full name",
          ),
        ),
      ),
    );
  }
}
