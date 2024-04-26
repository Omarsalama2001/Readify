import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_e_commerce/bloc_observer.dart';
import 'package:fruit_e_commerce/core/constants/cache_keys.dart';
import 'package:fruit_e_commerce/core/network/connection/bloc/connection_bloc.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';
import 'package:fruit_e_commerce/core/utils/theme/app_theme.dart';
import 'package:fruit_e_commerce/features/category/presentation/blocs/bloc/category_bloc.dart';
import 'package:fruit_e_commerce/features/favourites/presentation/blocs/bloc/favourites_bloc.dart';
import 'package:fruit_e_commerce/features/home/presentation/blocs/bloc/home_bloc.dart';
import 'package:fruit_e_commerce/features/home/presentation/pages/home_page.dart';
import 'package:fruit_e_commerce/injection_container.dart' as di;
import 'package:fruit_e_commerce/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundColor, // Set your desired status bar color here
    ));
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => di.sl<HomeBloc>()..add(GetAllBooksEvent())), BlocProvider(create: (_) => di.sl<CategoryBloc>()), BlocProvider(
    create: (_) => di.sl<FavouritesBloc>()),
   BlocProvider(create: (_) => ConnectionBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Splach(),
        theme: appTheme,
      ),
    );
  }
}
