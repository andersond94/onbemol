import 'package:bechannel/repositories/cep_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TextFieldNeu extends StatefulWidget {
  final String label;
  final String hint;
  bool isPassword;

  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmit;
  

  TextFieldNeu(
      {@required this.label,
      @required this.hint,
      this.onChanged,
      this.onSubmit,
      this.isPassword,
      });

  @override
  TextFieldState createState() => TextFieldState();
}

class TextFieldState extends State<TextFieldNeu> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.hint);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Text(
            this.widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: NeumorphicTheme.defaultTextColor(context),
            ),
          ),
        ),
        Neumorphic(
          margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
          style: NeumorphicStyle(
            depth: NeumorphicTheme.embossDepth(context),
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.all(Radius.circular(10))),
          ),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          child: this.widget.isPassword
              ? TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: this.widget.onChanged,
                  controller: _controller,
                  decoration:
                      InputDecoration.collapsed(hintText: this.widget.hint),
                )
              : TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  onChanged: this.widget.onChanged,
                  controller: _controller,
                  decoration:
                      InputDecoration.collapsed(hintText: this.widget.hint),
                  
                ),
        )
      ],
    );
  }
}

Color _textColor(BuildContext context) {
  if (NeumorphicTheme.isUsingDark(context)) {
    return Colors.white;
  } else {
    return Colors.black;
  }
}
