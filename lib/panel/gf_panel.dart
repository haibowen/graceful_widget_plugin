import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GFPanel extends StatelessWidget {
  GFPanel(
      {Key key,
        this.titleWidget,
        this.descWidget,
        this.statusWidget,
        this.iconWidget,
        this.children})
      : super(key: key);

  final List<Widget> children;
  final Widget titleWidget;
  final Widget descWidget;
  final Widget statusWidget;
  final Widget iconWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: iconWidget,
            title: titleWidget,
            subtitle: descWidget,
            trailing: statusWidget,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
