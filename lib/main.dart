import 'package:article_app/features/config/routes/routes.dart';
import 'package:article_app/features/config/theme/theme.dart';
import 'package:article_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await initializeDependency();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "NY Times Most Popular Articles",
        theme: theme(),

        /// Root Route Is Article List Page
        routerConfig: router,
      ),
    );
  }
}
