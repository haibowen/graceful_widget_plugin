import 'package:flutter/material.dart';

Color showColor(String type) {
  Color defaultValue;
  if (type == null) {
    defaultValue = Colors.grey[600];
  }
  switch (type) {
    case 'primary':
      defaultValue = Colors.blue;
      break;
    case "success":
      defaultValue = Colors.green;
      break;
    case "danger":
      defaultValue = Colors.red;
      break;
    case "warning":
      defaultValue = Colors.orange[600];
      break;
    default:
      break;
  }
  return defaultValue;
}

typedef void CloseTag(String content);

class GFTag extends StatefulWidget {
  GFTag(
      {Key key,
        this.content,
        this.type,
        this.sizeWidth = 50,
        this.sizeHeight = 30,
        this.borderColor = Colors.white,
        this.borderWidth = 0.1,
        this.topRightRadius = 4.0,
        this.topLeftRadius = 4.0,
        this.bottomLeftRadius = 4.0,
        this.bottomRightRadius = 4.0,
        this.closeTag,
        this.clearWidget,
        this.closeTagCallback})
      : super(key: key);

  final String content;
  final String type;
  final Color borderColor;
  final double borderWidth;
  final double topRightRadius;
  final double topLeftRadius;
  final double bottomRightRadius;
  final double bottomLeftRadius;
  final double sizeHeight;
  final double sizeWidth;
  final CloseTag closeTag;
  final Widget clearWidget;
  final GestureTapCallback closeTagCallback;

  @override
  State<StatefulWidget> createState() {
    return GFTagState();
  }
}

class GFTagState extends State<GFTag> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
              color: showColor(widget.type),
              border: Border.all(
                  color: widget.borderColor, width: widget.borderWidth),
              borderRadius: new BorderRadius.only(
                  topRight: Radius.circular(widget.topRightRadius),
                  bottomRight: Radius.circular(widget.bottomRightRadius),
                  topLeft: Radius.circular(widget.topLeftRadius),
                  bottomLeft: Radius.circular(
                      widget.bottomLeftRadius)) //BorderRadius.circular(),
          ),
          margin: EdgeInsets.all(5.0),
          // color: showColor(widget.type),
          height: widget.sizeHeight,
          width: widget.sizeWidth,
          child: widget.clearWidget != null
              ? Row(
            children: <Widget>[
              Center(
                child: Text(
                  widget.content,
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
              Center(child: widget.clearWidget),
            ],
          )
              : Center(
            child: Text(
              widget.content,
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          )),
      onTap: () {
        setState(() {
          widget.closeTagCallback();
        });
      },
    );
  }
}

class GFTagPlain extends StatefulWidget {
  GFTagPlain(
      {Key key,
        this.sizeHeight = 30,
        this.sizeWidth = 50,
        this.content,
        this.type,
        this.color,
        this.borderColor,
        this.textColor,
        this.borderWidth,
        this.topRightRadius,
        this.topLeftRadius,
        this.bottomRightRadius,
        this.bottomLeftRadius,
        this.closeTagCallback,
        this.clearWidget})
      : super(key: key);

  final String content;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;
  final double topRightRadius;
  final double topLeftRadius;
  final double bottomRightRadius;
  final double bottomLeftRadius;
  final String type;
  final double sizeHeight;
  final double sizeWidth;
  final Widget clearWidget;
  final GestureTapCallback closeTagCallback;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return GFTagPlainState();
  }
}

class GFTagPlainState extends State<GFTagPlain> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          decoration: BoxDecoration(
              color: widget.color,
              border: Border.all(
                  color: showColor(widget.type), width: widget.borderWidth),
              borderRadius: new BorderRadius.only(
                  topRight: Radius.circular(widget.topRightRadius),
                  bottomRight: Radius.circular(widget.bottomRightRadius),
                  topLeft: Radius.circular(widget.topLeftRadius),
                  bottomLeft: Radius.circular(
                      widget.bottomLeftRadius)) //BorderRadius.circular(),
          ),
          margin: EdgeInsets.all(5.0),
          // color: showColor(widget.type),
          height: widget.sizeHeight,
          width: widget.sizeWidth,
          child: widget.clearWidget != null
              ? Row(
            children: <Widget>[
              Center(
                child: Text(
                  widget.content,
                  style: TextStyle(
                      color: widget.textColor ?? showColor(widget.type),
                      fontSize: 16.0),
                ),
              ),
              Center(child: widget.clearWidget),
            ],
          )
              : Center(
            child: Text(
              widget.content,
              style: TextStyle(
                  color: widget.textColor ?? showColor(widget.type),
                  fontSize: 16.0),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            widget.closeTagCallback();
          });
        });
  }
}
