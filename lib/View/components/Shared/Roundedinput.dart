import 'package:flutter/material.dart';
import 'TextFieldContainer.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String err;
  final bool validate;
  final bool passInput;
  final TextInputType textInputType;
  final ValueChanged<String> onChanged;
    final TextEditingController messageController ;


  const RoundedInputField({
    Key key,
    this.hintText,
    this.messageController,
    this.icon = Icons.person,
    this.onChanged,
    this.textInputType,
    this.err = "invalid",
    this.validate = false,
    this.passInput = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: Form(
      child: TextFormField(
        controller: messageController,
        keyboardType: textInputType,
        obscureText: passInput,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color(0xff6D6D6D),
            size: 18,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Color(0xff6D6D6D),
              fontSize: 16,
              fontWeight: FontWeight.w300),
          border: InputBorder.none,
        ),
      ),
    ));
  }
}
