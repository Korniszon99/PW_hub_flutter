import 'package:flutter/material.dart';

extension AppColors on BuildContext {
  ColorScheme get _scheme => Theme.of(this).colorScheme;

  // Primary
  Color get primary => _scheme.primary;
  Color get onPrimary => _scheme.onPrimary;
  Color get primaryContainer => _scheme.primaryContainer;
  Color get onPrimaryContainer => _scheme.onPrimaryContainer;

  // Secondary
  Color get secondary => _scheme.secondary;
  Color get onSecondary => _scheme.onSecondary;
  Color get secondaryContainer => _scheme.secondaryContainer;
  Color get onSecondaryContainer => _scheme.onSecondaryContainer;

  // Tertiary
  Color get tertiary => _scheme.tertiary;
  Color get onTertiary => _scheme.onTertiary;

  // Surface
  Color get surface => _scheme.surface;
  Color get onSurface => _scheme.onSurface;
//  Color get surfaceVariant => _scheme.surfaceVariant;
  Color get onSurfaceVariant => _scheme.onSurfaceVariant;

  // Background
//  Color get background => _scheme.background;
//  Color get onBackground => _scheme.onBackground;

  // Error
  Color get error => _scheme.error;
  Color get onError => _scheme.onError;

  // Outline
  Color get outline => _scheme.outline;
}