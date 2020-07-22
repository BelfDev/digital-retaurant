import 'package:dr_app/components/star_rating.dart';
import 'package:dr_app/utils/styles.dart';
import 'package:flutter/material.dart';

import '../gradient_filter.dart';
import 'base_card.dart';

class LUOutletCard extends StatelessWidget {
  static const _imageBorderRadius = 8.0;

  final double width;
  final double height;
  final Function onPressed;
  final EdgeInsetsGeometry margin;
  final List<Color> filterColors;
  final double rating;
  final Color starColor;
  final String title;
  final String priceRange;
  final String imageSrc;

  const LUOutletCard(
      {Key key,
      this.width,
      this.height = 128,
      this.onPressed,
      this.margin = const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      this.filterColors,
      this.rating,
      this.starColor = Colors.yellow,
      @required this.title,
      @required this.priceRange,
      this.imageSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LUBaseCard(
      height: height,
      margin: margin,
      padding: EdgeInsets.all(8.0),
      borderRadius: 12.0,
      onPressed: onPressed,
      children: <Widget>[
        Positioned.fill(
            child: ClipRRect(
          borderRadius: BorderRadius.circular(_imageBorderRadius),
          child: FadeInImage.assetNetwork(
            placeholder: 'res/images/restaurant-placeholder.png',
            image: imageSrc,
            fit: BoxFit.cover,
          ),
        )),
        LUGradientFilter(
            filterColors: filterColors,
            borderRadius: BorderRadius.circular(_imageBorderRadius)),
        _buildCardContent()
      ],
    );
  }

  Container _buildCardContent() => Container(
        margin: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LUStarRating(
              rating: rating ?? 0,
              margin: EdgeInsets.only(bottom: 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(title, style: Styles.cardTitle),
                Text(
                  priceRange,
                  style: Styles.cardPriceRange,
                )
              ],
            )
          ],
        ),
      );
}
