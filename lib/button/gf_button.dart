import 'package:flutter/material.dart';

typedef VoidCallback = void Function();

Color getButtonColor(String type) {
  Color buttonColor;
  switch (type) {
    case 'normal':
      return buttonColor = Colors.lightBlue;
      break;
    case 'error':
      return buttonColor = Colors.red;
      break;
    case 'waring':
      return buttonColor = Colors.pink;
      break;
    case 'info':
      return buttonColor = Colors.green;
      break;
    default:
      break;
  }

  return buttonColor;
}

class GFButton extends StatefulWidget {
  final String text;
  final Color color;
  final Widget icon;
  final bool isShowIcon;
  final double height;
  final double width;
  final Color startColor;
  final Color endColor;
  final Color textColor;
  final String type;
  final double radius;
  final GestureTapCallback onTap;
  final GestureTapCallback onDoubleTap;
  final GestureLongPressCallback onLongPress;

  GFButton({
    Key key,
    this.text,
    this.color,
    this.icon,
    this.isShowIcon = false,
    this.width,
    this.height,
    this.startColor,
    this.endColor,
    this.textColor,
    this.type,
    this.radius,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GFButtonState();
  }
}

class GFButtonState extends State<GFButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onTap,
      onDoubleTap: widget.onDoubleTap,
      onLongPress: widget.onLongPress,
      highlightColor: Color(0x000000),
      splashColor: Color(0x000000),
      //去除背景色,
      //borderRadius: BorderRadius.circular(20),
      child: Container(
          height: widget.height,
          width: widget.width,
          // padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: widget.type != null
                      ? [
                          getButtonColor(widget.type),
                          getButtonColor(widget.type)
                        ]
                      : [
                          widget.startColor ?? Colors.purple,
                          widget.endColor ?? Colors.lightBlue
                        ]),
              borderRadius:
                  BorderRadius.all(Radius.circular(widget.radius ?? 20))),
          child: widget.isShowIcon
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      child: widget.icon,
                      padding: EdgeInsets.all(5.0),
                    ),
                    Padding(
                      child: Text(
                        widget.text ?? '按钮',
                        style: TextStyle(color: widget.textColor??Colors.white),
                      ),
                      padding:
                          EdgeInsets.only(right: 10.0, top: 5.0, bottom: 5.0),
                    ),
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      child: Text(
                        widget.text ?? '按钮',
                        style: TextStyle(color: widget.textColor??Colors.white),
                      ),
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                    ),
                  ],
                )),
    );
  }
}
