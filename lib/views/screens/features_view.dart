import 'package:flutter/material.dart';
import 'package:unmutify/models/feature.dart';
import 'package:unmutify/views/cells/feature_cell.dart';

class FeaturesView extends StatelessWidget {
  
  FeaturesView({Key? key}) : super(key: key);

  final List<Feature> allFeatures = [
    //FeatureCell(iconData: iconData, title: title, subTitle: subTitle)
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
