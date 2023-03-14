import 'package:flutter/material.dart';

import 'sign_up_name_text_field_component.dart';
import 'sign_up_email_text_field_component.dart';
import 'sign_up_password_text_field_component.dart';
import 'sign_up_submit_button_component.dart';

class SignUpFormComponent extends StatelessWidget {
  const SignUpFormComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          SignUpNameTextFieldComponent(),
          SignUpEmailTextFieldComponent(),
          SignUpPasswordTextFieldComponent(),
          SizedBox(height: 24.0),
          SignUpSubmitButtonComponent(),
        ],
      ),
    );
  }
}
