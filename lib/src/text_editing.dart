import 'package:flutter/material.dart';

class TextEditing extends StatefulWidget {
  var text;
  final Function onTextChanged;

  TextEditing({Key key, this.text, this.onTextChanged}) : super(key: key);

  @override
  _TextEditingState createState() => _TextEditingState();
}

class _TextEditingState extends State<TextEditing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text("Edit Text :",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
        ),
        Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
              initialValue: widget.text,
              onChanged: (value) {
                widget.onTextChanged(value);
              },
            )),
      ],
    );
  }
}

class FontSelector extends StatelessWidget {
  final String font;
  final String text;
  final ValueChanged<String> onFontSelected;

  FontSelector(this.text, this.font, this.onFontSelected);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => onFontSelected(font),
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(100.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontFamily: font,
          package: 'text_style_editor',
        ),
      ),
    );
  }
}
