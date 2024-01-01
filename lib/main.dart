import 'package:argedor_task/src/constants/application_const.dart';
import 'package:argedor_task/src/features/first/presentation/cubit/first_cubit.dart';
import 'package:argedor_task/src/features/first/presentation/page/first_screen.dart';
import 'package:argedor_task/src/localization/language_maneger.dart';
import 'package:argedor_task/src/shared/theme/custom_dark_theme.dart';
import 'package:argedor_task/src/shared/theme/custom_light_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: LanguageManager.instance.supportedLocales,
      fallbackLocale: LanguageManager.instance.supportedLocales.first,
      path: ApplicationConstants.easyLocalizationPath,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FirstCubit>(
          create: (context) => FirstCubit(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        debugShowCheckedModeBanner: false,
        theme: CustomLightTheme().themeData,
        darkTheme: CustomDarkTheme().themeData,
        home: const FirstScreen(),
      ),
    );
  }
}
