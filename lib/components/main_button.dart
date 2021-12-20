import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  bool isLoading;
  String text;
  Color color;

  MainButton({Key key, this.isLoading, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: isLoading
            ? Container(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 26,
                width: 26,
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
      ),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
