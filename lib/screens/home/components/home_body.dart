import 'package:flutter/material.dart';
import 'header_with_searchbox.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithScreenBox(size: size),
        ],
      ),
    );
  }
}
