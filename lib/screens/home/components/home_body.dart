import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomends_plant.dart';
import 'package:plant_app/screens/home/components/title_with_button.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithScreenBox(size: size),
          TitleWithButton(
            title: "Recommended",
            textButton: "More",
            press: () {},
          ),
          RecomendsPlant(),
          TitleWithButton(
            title: "Featured Plants",
            textButton: "More",
            press: () {},
          ),
          FeaturedPlants(size: size),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
