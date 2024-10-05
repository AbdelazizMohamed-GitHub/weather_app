import 'package:flutter/material.dart';

import 'package:weatherly/core/utils/app_image.dart';
import 'package:weatherly/model/weather_entity.dart';
import 'package:weatherly/view/widget/custom_degree_item.dart';

class CustomWetherDetails extends StatelessWidget {
  const CustomWetherDetails({
    super.key,
    required this.weather,
  });
  final WeatherEntity weather;
  @override
  Widget build(BuildContext context) {
    return  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        CustomDegreeItem(
            image: AppImage.humidity,
            number: '${weather.humidity}%',
            title: 'Humidity'),
        CustomDegreeItem(
            image: AppImage.wind,
            number: '${weather.windSpeed} km/h',
            title: 'Wind'),
        CustomDegreeItem(
            image: AppImage.speedometer,
            number: '${weather.airPresure}',
            title: 'Air Pressure'),
        CustomDegreeItem(
            image: AppImage.visibility,
            number: '${weather.visibility}km',
            title: 'Visibility'),
      ]
    );
  }
}
