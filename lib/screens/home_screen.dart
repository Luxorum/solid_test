import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:solid_test/constants.dart';

///Application home screen
class HomeScreen extends StatefulWidget {
  ///Home screen constructor
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
          onTap: () => setState(() => _backgroundColor = _generateColor()),
          child: AnimatedContainer(
            color: _backgroundColor ?? primaryColor,
            duration: const Duration(seconds: 1),
            child: Center(
              child: Text(
                localization.greeting,
                style: theme.textTheme.bodyMedium?.copyWith(
                  shadows: [
                    Shadow(
                      blurRadius: blurRadiusMedium,
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
    final generatedColor = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    return generatedColor;
  }
}
