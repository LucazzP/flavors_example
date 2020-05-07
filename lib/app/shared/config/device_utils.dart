import 'package:device_info/device_info.dart';

enum BuildMode { debug, profile, release }

class DeviceUtils {
  static BuildMode currentBuildMode() {
    if (const bool.fromEnvironment('dart.vm.product')) {
      return BuildMode.release;
    }
    var result = BuildMode.profile;
    //Little trick, since assert only runs on debug mode
    assert(() {
      result = BuildMode.debug;
      return true;
    }());
    return result;
  }

  static Future<AndroidDeviceInfo> get androidDeviceInfo =>
      DeviceInfoPlugin().androidInfo;

  static Future<IosDeviceInfo> get iosDeviceInfo => DeviceInfoPlugin().iosInfo;
}
