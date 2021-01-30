library text_editor;

import 'package:flutter/material.dart';
import 'package:text_style_editor/src/text_editing.dart';
import 'src/font_color_tool.dart';
import 'src/font_family_tool.dart';

import 'src/custom_text_style.dart';

class TextStyleEditor extends StatefulWidget {
  var text;
  final TextStyle textStyle;
  final ValueChanged<TextStyle> onTextStyleChanged;
  final ValueChanged<String> onTextChanged;
  final ValueChanged<TextAlign> onTextAlignChanged;
  final Color primaryColor;
  final Color secondaryColor;
  final backgroundColor;
  final double height;
  final Color activeToolColor;
  final Color inActiveToolColor;
  TextStyleEditor({
    @required this.onTextStyleChanged,
    @required this.onTextAlignChanged,
    this.textStyle,
    this.primaryColor = Colors.black26,
    this.secondaryColor = Colors.black12,
    this.backgroundColor = Colors.white,
    this.activeToolColor = Colors.black,
    this.inActiveToolColor = Colors.white,
    this.height,
    this.text,
    this.onTextChanged,
  });

  @override
  _TextStyleEditorState createState() => _TextStyleEditorState();
}

class _TextStyleEditorState extends State<TextStyleEditor> {
  TextStyle _textStyle;
  CustomTextStyle _customTextStyle;
  int _currentToolIndex = 2;
  Widget _currentTool;

  @override
  void initState() {
    /// Set default TextStyle
    print(widget.activeToolColor);
    _textStyle =
        widget.textStyle == null ? TextStyle(fontSize: 10.0) : widget.textStyle;

    _customTextStyle = CustomTextStyle.from(_textStyle);

    _currentTool = FontFamilyTool(
        defaultTextStyle: _customTextStyle,
        onTextStyleChanged: _onFontFamilyChanged);

    super.initState();
  }

  void _onFontFamilyChanged(value) {
    _customTextStyle = value;

    widget.onTextStyleChanged(CustomTextStyle.to(_customTextStyle));
  }

  void _onTextChanged(value) {
    setState(() {
      widget.text = value;
      widget.onTextChanged(value);
    });
  }

  void _onFontColorChanged(value) {
    _customTextStyle = value;

    widget.onTextStyleChanged(CustomTextStyle.to(_customTextStyle));
  }

  void _changeToolIndex(int index) {
    setState(() {
      _currentToolIndex = index;
      if (_currentToolIndex == 1) {
        _currentTool = TextEditing(
          text: widget.text,
          onTextChanged: _onTextChanged,
        );
      } else if (_currentToolIndex == 2) {
        _currentTool = FontFamilyTool(
          defaultTextStyle: _customTextStyle,
          onTextStyleChanged: _onFontFamilyChanged,
        );
      } else if (_currentToolIndex == 3) {
        _currentTool = FontColorTool(
          defaultTextStyle: _customTextStyle,
          onTextStyleChanged: _onFontColorChanged,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      color: widget.backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                Container(
              margin: EdgeInsets.only(
                top: 20,
                left: constraints.maxWidth * 0.05,
                right: constraints.maxWidth * 0.05,
                bottom: 20,
              ),
              // width: constraints.maxWidth * 0.9,
              decoration: BoxDecoration(
                color: widget.secondaryColor,
                // border: Border.all(color: widget.secondaryColor),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.edit,
                      color: _currentToolIndex == 1
                          ? widget.activeToolColor
                          : widget.inActiveToolColor,
                    ),
                    onPressed: () => _changeToolIndex(1),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.title,
                      color: _currentToolIndex == 2
                          ? widget.activeToolColor
                          : widget.inActiveToolColor,
                    ),
                    onPressed: () => _changeToolIndex(2),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.palette,
                      color: _currentToolIndex == 3
                          ? widget.activeToolColor
                          : widget.inActiveToolColor,
                    ),
                    onPressed: () => _changeToolIndex(3),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child: _currentTool)),
        ],
      ),
    );
  }
}
