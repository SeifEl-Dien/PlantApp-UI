import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommends_plants.dart';
import 'title_with_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithButton(press: () {}, title: 'Recommended'),
          RecommendsPlants(),
          TitleWithButton(press: () {}, title: 'Featured Plants'),
          FeaturedPlants()
        ],
      ),
    );
  }
}
