import 'package:flutter/material.dart';

import '../components/sing_up_form_component.dart';
import '../widgets/animated_hover_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedHoverWidget(
          curve: Curves.fastOutSlowIn,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get Started',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 40.0),
              const SizedBox(
                width: 360.0,
                child: SignUpFormComponent(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
