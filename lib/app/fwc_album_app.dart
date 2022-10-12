import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:fwc_album_app/app/core/ui/theme/theme_config.dart';
import 'package:fwc_album_app/app/pages/auth/login_page.dart';
import 'package:fwc_album_app/app/pages/auth/register/register_route.dart';
import 'package:fwc_album_app/app/pages/home/home_page.dart';
import 'package:fwc_album_app/app/pages/splash/view/splash_route.dart';
import 'package:fwc_album_app/app/repositories/auth/auth_repository.dart';
import 'package:fwc_album_app/app/repositories/auth/auth_repository_impl.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i()))
      ],
      child: MaterialApp(
        title: 'Fifa World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage()
        },
      ),
    );
  }
}
