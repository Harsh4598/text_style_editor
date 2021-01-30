import 'package:flutter/material.dart';
import 'custom_text_style.dart';

class FontColorTool extends StatefulWidget {
  final CustomTextStyle defaultTextStyle;
  final ValueChanged<CustomTextStyle> onTextStyleChanged;

  FontColorTool(
      {@required this.defaultTextStyle, @required this.onTextStyleChanged});

  @override
  _FontColorToolState createState() => _FontColorToolState();
}

class _FontColorToolState extends State<FontColorTool> {
  CustomTextStyle customTextStyle;

  void _onColorSelected(color) {
    widget.defaultTextStyle.color = color;

    widget.onTextStyleChanged(widget.defaultTextStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFFF0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFFE0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFF00')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFAFA')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFAF0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFFACD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFF8DC')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFF5EE')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFF0F5')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFEFD5')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFEBCD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFE4E1')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFE4C4')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFE4B5')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFDEAD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFDAB9')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFD700')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFC0CB')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFB6C1')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFA500')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFFA07A')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF8C00')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF7F50')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF69B4')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF6347')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF4500')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF1493')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF00FF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFF0000')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFFDF5E6')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFAFAD2')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFAF0E6')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFAEBD7')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFFA8072')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFF8F8FF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF5FFFA')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF5F5F5')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF5F5DC')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF5DEB3')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFF4A460')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF0FFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF0FFF0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF0F8FF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFF0E68C')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFF08080')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFEEE8AA')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFEE82EE')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFE9967A')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFE6E6FA')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFE0FFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDEB887')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDDA0DD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDCDCDC')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDC143C')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFDB7093')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDAA520')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFDA70D6')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFD8BFD8')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFD3D3D3')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFD2B48C')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFD2691E')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFCD853F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFCD5C5C')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFC71585')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFC0C0C0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFBDB76B')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFBC8F8F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFBA55D3')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xFFB8860B')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xFFB22222')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffB0E0E6')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffB0C4DE')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffAFEEEE')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffADFF2F')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xffADD8E6')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffA9A9A9')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffA52A2A')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xffA0522D')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff9ACD32')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff9932CC')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff98FB98')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff9400D3')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff9370DB')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff90EE90')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff8FBC8F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff8B4513')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff8B008B')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff8B0000')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff8A2BE2')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff87CEFA')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff87CEEB')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff808080')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff808000')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff800080')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff800000')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff7FFFD4')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff7FFF00')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff7CFC00')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff7B68EE')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff778899')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff708090')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff6B8E23')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff6A5ACD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff696969')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff66CDAA')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff6495ED')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff5F9EA0')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff556B2F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff4B0082')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff48D1CC')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff483D8B')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff4682B4')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff4169E1')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff40E0D0')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff3CB371')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff32CD32')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff2F4F4F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff2E8B57')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff228B22')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff20B2AA')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff1E90FF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff191970')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00FFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00FFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff00FF7F')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00FF00')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00FA9A')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00CED1')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00BFFF')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff008B8B')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff008080')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff008000')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff006400')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff0000FF')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _ColorWidget(
                    color: Color(int.parse('0xff0000CD')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff00008B')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff000080')),
                    onColorSelected: _onColorSelected,
                  ),
                  _ColorWidget(
                    color: Color(int.parse('0xff000000')),
                    onColorSelected: _onColorSelected,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorWidget extends StatefulWidget {
  final Color color;
  final bool isColorPicker;
  final ValueChanged<Color> onColorSelected;

  _ColorWidget(
      {@required this.onColorSelected,
      this.color = Colors.black,
      this.isColorPicker = false});

  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<_ColorWidget> {
  Color currentColor;

  @override
  void initState() {
    currentColor = widget.color;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width / 5.6;

    return GestureDetector(
        onTap: () => widget.onColorSelected(widget.color),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            width: maxWidth,
            height: maxWidth / 2,
            decoration: BoxDecoration(
              gradient: widget.isColorPicker
                  ? SweepGradient(
                      colors: [
                        Colors.blue,
                        Colors.green,
                        Colors.yellow,
                        Colors.red,
                        Colors.blue
                      ],
                      stops: [0.0, 0.25, 0.5, 0.75, 1],
                    )
                  : null,
              color: currentColor,
              // border: Border.all(color: Colors.black12),
              // borderRadius: BorderRadius.circular(100)
            ),
          ),
        ));
  }
}
