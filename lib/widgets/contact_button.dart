import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  //this variable like: buttonText (with string datatype) and icon (with Widget datatype) will used in the future.
  final String buttonText;
  final Widget icon;
  final Function onPressed;

  const ContactButton({
    Key key,
    this.buttonText,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton.icon(
          style: TextButton.styleFrom(
              textStyle: TextStyle(
                color: Colors.black12,
              ),
              backgroundColor: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0))),
          onPressed: onPressed,
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          label: Text('$buttonText', style: TextStyle(color: Colors.black54))),
    );
  }
}
