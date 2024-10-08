import 'package:pharma_app/core/constants/app_themes.dart';
import 'package:pharma_app/core/services/router_service.dart';
import 'package:pharma_app/features/main/presentation/cubits/main_cubit/main_cubit.dart';
import 'package:pharma_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await initSettings();
  runApp(const MyApp());
}

Future<void> initSettings() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color.fromARGB(0, 255, 255, 255),
      statusBarColor: Color.fromARGB(0, 255, 255, 255),
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  await InjectionContainer.initAppDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final designSize = const Size(350, 800);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      fontSizeResolver: (fontSize, instance) {
        final display = View.of(context).display;
        final screenSize = display.size / display.devicePixelRatio;
        final scaleWidth = screenSize.width / designSize.width;
        return fontSize * scaleWidth;
      },
      builder: (_, __) => MultiBlocProvider(
        providers: [
        BlocProvider(create: (context) => MainCubit(),)
        ],
        child: MaterialApp.router(
         
          title: 'PMS App',
          debugShowCheckedModeBanner: false,
          routerConfig: InjectionContainer.getIt<RouterService>().router,
          // builder:EasyLoading.init(),
          theme: AppThemes.themeEnglish,
        ),
      ),
    );
  }
}
/*
keytool -genkey -v -keystore C:\Users\Asus\AndroidStudioProjects\Flutter\current\pharma_app\android\app\debug-keystore.jks ^
        -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 ^
        -alias debug
        osama$57475600
 */
