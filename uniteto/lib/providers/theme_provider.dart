import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// The current user selected ThemeMode
final themeModeStateProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);
