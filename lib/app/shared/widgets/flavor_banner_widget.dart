import 'package:flavors_example/app/shared/config/flavor_config.dart';
import 'package:flavors_example/app/shared/models/banner_config_model.dart';
import 'package:flavors_example/app/shared/widgets/device_info_dialog.dart';
import 'package:flutter/material.dart';

class FlavorBannerWidget extends StatelessWidget {
  final Widget child;
  final BannerConfigModel bannerConfig = BannerConfigModel(
    bannerName: FlavorConfig.instance.name,
    bannerColor: FlavorConfig.instance.color,
  );

  FlavorBannerWidget({@required this.child});

  @override
  Widget build(BuildContext context) {
    if (FlavorConfig.isProduction) return child;
    return Stack(
      children: <Widget>[
        child,
        _buildBanner(context),
      ],
    );
  }

  Widget _buildBanner(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPress: () => showDialog(
        context: context,
        builder: (context) => DeviceInfoDialog(),
      ),
      child: Container(
        width: 50,
        height: 50,
        child: CustomPaint(
          painter: BannerPainter(
            message: bannerConfig.bannerName.toUpperCase(),
            textDirection: Directionality.of(context),
            layoutDirection: Directionality.of(context),
            location: BannerLocation.topStart,
            color: bannerConfig.bannerColor,
          ),
        ),
      ),
    );
  }
}
