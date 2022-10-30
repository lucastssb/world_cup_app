import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'live_activities_method_channel.dart';

abstract class LiveActivitiesPlatform extends PlatformInterface {
  LiveActivitiesPlatform() : super(token: _token);

  static final Object _token = Object();

  static LiveActivitiesPlatform _instance = MethodChannelLiveActivities();

  static LiveActivitiesPlatform get instance => _instance;

  static set instance(LiveActivitiesPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> createActivity(Map<String, String> data) {
    throw UnimplementedError('createActivity() has not been implemented.');
  }

  Future updateActivity(String activityId, Map<String, String> data) {
    throw UnimplementedError('updateActivity() has not been implemented.');
  }

  Future endActivity(String activityId) {
    throw UnimplementedError('endActivity() has not been implemented.');
  }
}
