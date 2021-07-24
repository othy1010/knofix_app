import 'package:flutter/material.dart';

class PasswordInputBox extends StatefulWidget {
  Widget? suffixChild;
  Widget? preChild;
  String? labelText;
  String? hintText;

  PasswordInputBox({
    Key? key,
    this.preChild,
    this.suffixChild,
    this.labelText,
    this.hintText,
  }) : super(key: key);

  @override
  _PasswordInputBoxState createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          // width: size.width * 0.7,
          decoration: BoxDecoration(
            // color: Theme.of(context).primaryColor,
            color: Color(0xff323232),
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontSize: 18,
            ),
            focusNode: _focusNode,
            cursorColor: Theme.of(context).accentColor,
            decoration: InputDecoration(
              fillColor: Color(0xfff3f3f4),
              labelText: widget.labelText,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.white24,
                fontFamily: 'Montserrat',
                fontSize: 18,
              ),
              labelStyle: TextStyle(
                color: _focusNode.hasFocus
                    ? Theme.of(context).accentColor
                    : Colors.white38,
                fontFamily: 'Montserrat',
                fontSize: 18,
              ),
              border: InputBorder.none,
              icon: widget.preChild,
              suffixIcon: widget.suffixChild,
            ),
          ),
        ));
  }
}
