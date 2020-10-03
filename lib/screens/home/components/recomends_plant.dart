import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendsPlant extends StatelessWidget {
  const RecomendsPlant({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCart(
            size: size,
            urlImage: "assets/images/image_1.png",
            title: "Samantha",
            country: "Rusia",
            price: 440,
            press: () {},
          ),
          RecomendPlantCart(
            size: size,
            urlImage: "assets/images/image_2.png",
            title: "Alantic",
            country: "America",
            price: 480,
            press: () {},
          ),
          RecomendPlantCart(
            size: size,
            urlImage: "assets/images/image_3.png",
            title: "Sakura",
            country: "japan",
            price: 540,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCart extends StatelessWidget {
  const RecomendPlantCart({
    Key key,
    @required this.size,
    this.urlImage,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final Size size;
  final String urlImage, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        bottom: kDefaultPadding * 2.5,
        top: kDefaultPadding / 2,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(urlImage),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
