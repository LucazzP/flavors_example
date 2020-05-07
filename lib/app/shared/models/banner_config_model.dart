import 'package:flutter/material.dart';

@immutable
class BannerConfigModel {
  final String bannerName;
  final Color bannerColor;

  const BannerConfigModel({
    @required this.bannerName,
    @required this.bannerColor,
  });
}
