import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key key,
    this.title,
    this.textButton,
    this.press,
  }) : super(key: key);

  final String title;
  final String textButton;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomeUnderLine(text: title),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              textButton,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomeUnderLine extends StatelessWidget {
  const TitleWithCustomeUnderLine({Key key, this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            bottom: -5,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
