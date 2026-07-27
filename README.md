# Travela

## Project Overview
Minimal SSE-based travel property search Flutter app scaffold. This repo contains project configuration and conventions. Business logic and features live under `lib/features/` (feature-first).

## Architecture
Feature-first, Clean Architecture (Presentation → Domain → Data → Core)

## Tech Stack
- Flutter (stable)
- Material 3
- flutter_bloc
- dio
- get_it
- freezed
- json_serializable
- build_runner
- equatable
- cached_network_image
- intl
- logger
- pretty_dio_logger

## Folder Structure
- lib/
  - core/
  - features/
  - main.dart

## Getting Started
1. Install Flutter SDK (stable)
2. flutter pub get
3. Build/generated code: flutter pub run build_runner build --delete-conflicting-outputs

## Build Commands
- flutter analyze
- flutter test
- flutter run
- flutter pub run build_runner build --delete-conflicting-outputs

## State Management
Project uses flutter_bloc (Bloc + Cubit) for presentation/state management.

## Assumptions
- Generated files (`*.freezed.dart`, `*.g.dart`) are committed to VCS per team convention.
- No business logic is implemented in this initial scaffold.
