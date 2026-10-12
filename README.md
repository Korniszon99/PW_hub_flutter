# PW Hub — Student Information App

**A Flutter prototype for university events, news, guides and campus maps.**

Flutter · Dart · Provider · localization · Material UI

The application groups student-facing information in one interface and includes navigation, light/dark themes and Polish/English locale support. The source is in `pw_hub_flutter/`; desktop and mobile runner projects are included alongside the web target.

## Run

Use a stable Flutter release containing Dart compatible with `^3.10.4`.

```bash
git clone https://github.com/Korniszon99/PW_hub_flutter.git
cd PW_hub_flutter/pw_hub_flutter
flutter pub get
flutter run -d chrome
```

## Check and build

```bash
flutter analyze
flutter test
flutter build web
```

The smoke test constructs the actual PW Hub widget with its required providers. CI analyzes the project, runs tests and builds the web target. The old template counter test did not match this application.

## Scope

This is a student information UI prototype. Before release, verify content ownership, real data integration, accessibility, navigation, asset loading and device builds. Android signing must use deployment-specific credentials rather than the debug signing setup. Keep keystores and passwords outside Git.

The project is large because of visual assets; migrating assets or rewriting history requires a separate change with an explicit content decision. The original GitLab project reference is part of the project history; contributions and team ownership should be stated accurately in any portfolio case study.

**Portfolio fit:** supplementary UI/mobile experience; no computer vision model is implemented here. [Security notes](SECURITY.md).
