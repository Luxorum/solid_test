import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

///Application home screen
class HomeScreen extends StatefulWidget {
  ///Home screen constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  static const _animationDuration = Duration(seconds: 1);
  static const _blurRadius = 20.0;

  Color? _backgroundColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localization = AppLocalizations.of(context);
    final primaryColor = theme.primaryColor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            HapticFeedback.heavyImpact();
            setState(() => _backgroundColor = _generateColor());
          },
          child: AnimatedContainer(
            color: _backgroundColor ?? primaryColor,
            duration: _animationDuration,
            child: Center(
              child: Text(
                localization.greeting,
                style: theme.textTheme.bodyMedium?.copyWith(
                  shadows: [
                    Shadow(
                      blurRadius: _blurRadius,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _generateColor() {
    final random = Random();
    const colorComponentMax = 256;

    return Color.fromRGBO(
      random.nextInt(colorComponentMax),
      random.nextInt(colorComponentMax),
      random.nextInt(colorComponentMax),
      1,
    );
  }
}
