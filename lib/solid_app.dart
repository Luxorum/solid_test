part of 'main.dart';

///Main class of Application
class SolidApp extends StatelessWidget {
  ///Main class constructor
  const SolidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('uk'),
      ],
      theme: createLightTheme(),
      darkTheme: createDarkTheme(),
      home: const HomeScreen(),
    );
  }
}
