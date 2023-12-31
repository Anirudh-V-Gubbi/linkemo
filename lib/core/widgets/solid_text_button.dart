import 'package:flutter/material.dart' hide Router;

class SolidTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  final Color? buttonColor;
  final bool isLoading;

  const SolidTextButton({Key? key, required this.text, required this.onPressed, this.textStyle, this.isLoading = false, this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color?>(buttonColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if(isLoading)
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 16.0),
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
      onPressed: () => onPressed(),
    );
  }
}