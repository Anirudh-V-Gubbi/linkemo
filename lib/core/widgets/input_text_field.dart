import 'package:flutter/material.dart' hide Router;

class InputTextField extends StatelessWidget {
  final int maxLines;
  final int? maxLength;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String validatorMessage;
  final bool Function(String?) validator;
  final void Function()? onEditingComplete;
  final void Function(String?)? onFieldSubmitted;
  final Color errorColor;
  final bool obscure;
  final double width;
  const InputTextField(
      {Key? key,
      this.maxLines = 1,
      this.hintText = '',
      required this.controller,
      required this.width,
      required this.validator,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.keyboardType = TextInputType.text,
      this.validatorMessage = '',
      this.maxLength,
      this.errorColor = Colors.red,
      this.obscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool autovalidate = false;
    return SizedBox(
      width: width,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.always,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        maxLength: maxLength,
        textInputAction: TextInputAction.send,
        keyboardType: TextInputType.text,
        maxLines: maxLines,
        obscureText: obscure,
        decoration: InputDecoration(
          fillColor: Colors.black,
          hintText: hintText,
          alignLabelWithHint: true,
          labelText: hintText,
          labelStyle: const TextStyle(
            color: Colors.white
          ),
          errorStyle: TextStyle(
            color: errorColor,
            fontWeight: FontWeight.w600
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
                color: Colors.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: errorColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(color: errorColor),
          ),
        ),
        textCapitalization: TextCapitalization.sentences,
        validator: (enteredText) {
          if (validator(enteredText) && autovalidate) {
            return validatorMessage;
          } else {
            autovalidate = true;
            return null;
          }
        },
        onChanged: (text) {
          autovalidate = true;
        },
      ),
    );
  }
}
