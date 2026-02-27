# jusi_app_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# JuSiApp (based on LiveKit Flutter Example)

This app implements a video room using LiveKit's Flutter SDK. Designed to run for iOS, Android, Web, Mac, and Windows.

## Quickstart

Run example:

```bash
flutter pub get
# Due to the inconvenience of typing on mobile devices, 
# you can autofill URL and TOKEN for first run in debug mode.
flutter run --dart-define=URL=wss://${LIVEKIT_SERVER_IP_OR_DOMAIN} --dart-define=TOKEN=${YOUR_TOKEN}
```

## End-to-End Encryption (E2EE)

The example app supports end-to-end encryption for audio and video tracks. To enable E2EE:

1. Toggle the "E2EE" switch in the connect screen
2. Enter a shared key that will be used for encryption
3. All participants must use the same shared key to communicate

For web support, you'll need to compile the E2EE web worker:

```bash
dart compile js web/e2ee.worker.dart -o example/web/e2ee.worker.dart.js -m
```

Note: All participants in the room must have E2EE enabled and use the same shared key to see and hear each other. If the keys don't match, participants won't be able to decode each other's audio and video.
