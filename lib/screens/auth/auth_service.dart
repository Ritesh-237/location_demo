import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volume_watcher/volume_watcher.dart';

class AuthService extends StatefulWidget {
  const AuthService({super.key});

  @override
  State<AuthService> createState() => _AuthServiceState();
}

class _AuthServiceState extends State<AuthService> {
  String _platformVersion = 'Unknown';
  double currentVolume = 0;
  double initVolume = 0;
  double maxVolume = 0;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;

    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      VolumeWatcher.hideVolumeView = true;
      platformVersion = await VolumeWatcher.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    double initVolume = 0;
    double maxVolume = 0;
    try {
      initVolume = await VolumeWatcher.getCurrentVolume;
      maxVolume = await VolumeWatcher.getMaxVolume;
    } on PlatformException {
      platformVersion = 'Failed to get volume.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
      this.initVolume = initVolume;
      this.maxVolume = maxVolume;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              VolumeWatcher(
                onVolumeChangeListener: (double volume) {
                  setState(() {
                    currentVolume = volume;
                  });
                },
              ),
              Text("系统版本=$_platformVersion"),
              Text("最大音量=$maxVolume"),
              Text("初始音量=$initVolume"),
              Text("当前音量=$currentVolume"),
              TextButton(
                onPressed: () {
                  VolumeWatcher.setVolume(maxVolume * 0.5);
                },
                child: Text("设置音量为${maxVolume * 0.5}"),
              ),
              TextButton(
                onPressed: () {
                  VolumeWatcher.setVolume(maxVolume * 0.0);
                },
                child: Text("设置音量为${maxVolume * 0.0}"),
              )
            ]),
      ),
    );
  }
}
