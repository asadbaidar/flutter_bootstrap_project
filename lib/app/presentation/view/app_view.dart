import 'package:common/common.dart';
import 'package:core/common/injector.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:locale/locale.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    this.fcmToken = '',
  });

  final String fcmToken;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.unfocus(),
      child: const LocaleProvider(
        child: AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final router = injector<AppRouter>();
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      theme: AppTheme.light().data(context),
      darkTheme: AppTheme.dark().data(context),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
        data: context.mediaQuery.copyWith(
          textScaler: TextScaler.noScaling,
        ),
        child: child!,
      ),
    );
  }
}
