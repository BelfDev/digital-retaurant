import 'package:dr_app/components/cards/outlet_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//class _HomeScreenState extends State<HomeScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//      child: Scaffold(
//        body: Container(
//            child: Column(
//          children: <Widget>[
//            LUFeaturedCard(
//              imageSrc: 'https://placeimg.com/640/480/any',
//              onPressed: () {
//                print('tapped');
//              },
//              title: 'Bar Soba',
//              subtitle: 'Asian Food',
//              priceRange: '\$\$',
//              rating: 4,
//            ),
//            LUCategoryCard(
//              title: 'Italian',
//              onPressed: () {
//                print('Pressed on Category Card');
//              },
//            ),
//            LUOutletCard(
//              title: 'La Vita Sputini',
//              rating: 4.0,
//              priceRange: '\$\$',
//              onPressed: () {},
//            ),
//          ],
//        )),
//      ),
//    );
//  }
//}

class _HomeScreenState extends State<HomeScreen> {
  final dummyCards = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Container(
          margin: EdgeInsets.only(top: 90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.yellow,
          ),
          child: Container(
            margin: EdgeInsets.only(top: 180),
            decoration: BoxDecoration(
              color: Color(0xFFFAFAFA),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: ListView(
              children: dummyCards
                  .map(
                    (e) => LUOutletCard(
                      title: 'La Vita Sputini',
                      rating: 4.0,
                      priceRange: '\$\$',
                      onPressed: () {},
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
