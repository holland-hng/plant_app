import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            size: size,
            urlImage: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            size: size,
            urlImage: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    @required this.size,
    this.urlImage,
    this.press,
  }) : super(key: key);

  final Size size;
  final String urlImage;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          bottom: kDefaultPadding,
          top: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(urlImage),
          ),
        ),
      ),
    );
  }
}
