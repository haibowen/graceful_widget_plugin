import 'package:flutter/material.dart';

//圆形按钮的Radio的封装
// ignore: must_be_immutable
class GFRadio extends StatefulWidget {
  bool value = false;
  final bool labelDisabled;
  final Function(bool) onChanged;
  final Color checkedColor;
  final double iconSize;
  final String textShow; //要显示的文字
  final Color textColor; //文字颜色

  final IconData unSelectedIcon; //为选择时的图标
  final IconData selectedIcon; //选择后的图标

  GFRadio(
      {Key key,
        @required this.value,
        this.labelDisabled,
        this.onChanged,
        this.checkedColor = Colors.lightBlue,
        this.textShow,
        this.textColor,
        this.selectedIcon = Icons.check_circle,
        this.unSelectedIcon = Icons.panorama_fish_eye,
        this.iconSize = 25.0})
      : assert(value != null),
        super(key: key);

  @override
  _GFRadioState createState() => _GFRadioState();
}

class _GFRadioState extends State<GFRadio> {
  @override
  Widget build(BuildContext context) {
    return widget.labelDisabled!=null
        ? Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            GestureDetector(
              child: widget.value
                  ? Icon(
                widget.selectedIcon,
                size: widget.iconSize,
                color: widget.checkedColor,
              )
                  : Icon(
                widget.unSelectedIcon,
                size: widget.iconSize,
                color: Colors.grey,
              ),
              onTap: () {
                setState(() {
                  if (widget.onChanged == null) return;
                  widget.value = !widget.value;
                  widget.onChanged(widget.value);
                });
              },
            ),
            Padding(
              child: Text(
                widget.textShow ?? "",
                style: TextStyle(color: widget.textColor),
              ),
              padding: EdgeInsets.only(left: 10),
            )
          ],
        ))
        : GestureDetector(
        onTap: () {
          setState(() {
            if (widget.onChanged == null) return;
            widget.value = !widget.value;
            widget.onChanged(widget.value);
          });
        },
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: <Widget>[
                widget.value
                    ? Icon(
                  widget.selectedIcon,
                  size: widget.iconSize,
                  color: widget.checkedColor,
                )
                    : Icon(
                  widget.unSelectedIcon,
                  size: widget.iconSize,
                  color: Colors.grey,
                ),
                Padding(
                  child: Text(
                    widget.textShow ?? "",
                    style: TextStyle(color: widget.textColor),
                  ),
                  padding: EdgeInsets.only(left: 10),
                )
              ],
            )));
  }
}
