import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Icon fieldIcon;
  final String hinText;
  CustomInputField({this.fieldIcon, this.hinText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 300,
      child: Material(
        elevation: 5,
        color: Colors.deepOrange,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: this.fieldIcon,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              width: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: this.hinText,
                  ),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
