import 'package:flutter/material.dart';


typedef void FieldCallBack(String content);

class GFSearch extends StatefulWidget {
  GFSearch(
      {Key key,
        this.placeHolder,
        this.background,
        this.height = 60.0,
        this.cancelIconColor = Colors.grey,
        this.searchIconColor = Colors.black,
        this.searchBarColor,
        this.disabled = true,
        this.inputAlign = TextAlign.left,
        // this.borderRadiusParent,
        this.borderRadiusChild,
        this.searchCallBack,
        this.onSearch})
      : super(key: key);

  final String placeHolder;
  final Color background;
  final Color cancelIconColor;
  final Color searchIconColor;
  final Color searchBarColor;
  final double height;

  final TextAlign inputAlign;
  final bool disabled;
  final FieldCallBack searchCallBack;
  final GestureTapCallback onSearch;

  // final BorderRadius borderRadiusParent;
  final BorderRadius borderRadiusChild;

  @override
  State<StatefulWidget> createState() {
    return GFSearchState();
  }
}

class GFSearchState extends State<GFSearch> {
  String _inputText = "";
  bool _hasDeleteIcon = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = new TextEditingController.fromValue(
        TextEditingValue(
            text: _inputText,
            selection: new TextSelection.fromPosition(TextPosition(
                affinity: TextAffinity.downstream,
                offset: _inputText.length))));
    return Card(
      elevation: 1.0,
      child: Container(
          height: widget.height,
          color: widget.background,
          child: Center(
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: widget.height - 20,
                decoration: BoxDecoration(
                  //border: new Border.all(width: 2.0, color: Colors.black),
                    color: widget.searchBarColor ?? Colors.grey[100],
                    borderRadius: widget
                        .borderRadiusChild //new BorderRadius.all(new Radius.circular(18.0)),
                ),
                child: Center(
                  child: Container(
                    child: TextFormField(
                      enabled: widget.disabled,
                      onChanged: (str) {
                        setState(() {
                          _inputText = str;
                          _hasDeleteIcon = (_inputText.isNotEmpty);
                          widget.searchCallBack(_inputText);
                        });
                      },
                      controller: _controller,
                      textAlign: widget.inputAlign,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5),
                        suffixIcon: _hasDeleteIcon
                            ? IconButton(
                          icon: Icon(
                            Icons.cancel,
                            color: widget.cancelIconColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _inputText = "";
                              _hasDeleteIcon = (_inputText.isNotEmpty);
                              widget.searchCallBack(_inputText);
                            });
                          },
                        )
                            : Text(''),
                        prefixIcon: InkWell(
                            child: Icon(
                              Icons.search,
                              color: widget.searchIconColor,
                            ),
                            onTap: widget.onSearch),
                        hintText: widget.placeHolder,
                        border: OutlineInputBorder(
                            borderRadius: widget
                                .borderRadiusChild //BorderRadius.all(Radius.circular(18.0))
                        ),
                      ),
                    ),
                  ),
                )),
          )),
    );
  }
}
