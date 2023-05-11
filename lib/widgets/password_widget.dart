import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobileapp/controllers/password_widget_controller.dart';

class PasswordWidget extends StatefulWidget {
  bool obscureText = true;

  PasswordWidget({super.key});

  @override
  State<PasswordWidget> createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  //state call
                  obscureText: widget.obscureText,
                  decoration: const InputDecoration(
                    label: Text('Saisir un mot de passe'),
                  ),
                  onChanged: (String value) {
                    inspect(value);
                  },
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    widget.obscureText =
                        PasswordWidgetController.getObscure(widget.obscureText);
                  });
                },
                icon: PasswordWidgetController.getIcon(widget.obscureText),
              ),
            ],
          ),
          const SizedBox(
            height:15,
          ),
          Text(
            '0 caractère saisis',
          ),
        ],
      ),
    );
  }
}
