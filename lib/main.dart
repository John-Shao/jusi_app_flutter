import 'package:flutter/material.dart';
import 'package:jusi_app_flutter/theme.dart';
import 'package:logging/logging.dart';
import 'package:intl/intl.dart';
import 'pages/connect.dart';

void main() async {
  final format = DateFormat('HH:mm:ss');
  // configure logs for debugging
  Logger.root.level = Level.FINEST;
  Logger.root.onRecord.listen((record) {
    print('${format.format(record.time)} [${record.level.name}]: ${record.message}');
  });

  WidgetsFlutterBinding.ensureInitialized();
  /*if (lkPlatformIsDesktop()) {
    await FlutterWindowClose.setWindowShouldCloseHandler(() async {
      await onWindowShouldClose?.call();
      return true;
    });
  }*/

  /// for livestreaming app, you can initialize the bypassVoiceProcessing = true
  /// here to get better audio quality
  ///
  /// await LiveKitClient.initialize(
  ///  bypassVoiceProcessing: lkPlatformIsMobile(),
  /// );
  runApp(const JuSiApp());
}

class JuSiApp extends StatelessWidget {
  //
  const JuSiApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'JuSiAI',
        theme: LiveKitTheme().buildThemeData(context),
        home: const ConnectPage(),
      );
}
