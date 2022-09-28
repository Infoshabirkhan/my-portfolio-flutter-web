import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio_web/Controllers/Cubits/nav_control_cubit.dart';
import 'package:my_portfolio_web/Controllers/Cubits/our_services_animation_cubit.dart';
import 'package:my_portfolio_web/Controllers/Cubits/services_provide_cubit.dart';
import 'package:my_portfolio_web/Views/PageViewRoutes/home_screen.dart';

import 'Controllers/Cubits/nav_bar_animation_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(

    enabled: false,
      builder: (BuildContext context) =>
       const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _firebaseInit = Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyAlZNPtclcnC2pxN74_I_azhKuu9ujz5b0",
        appId: "1:309953291092:web:da8835683505ad82541ec1",
        messagingSenderId: "309953291092",
        projectId: "my-portfolio-app-3a86e",
      )
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(

      builder: (BuildContext context, Widget? child) =>
          MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => NavBarAnimationCubit(false) ),
              BlocProvider(create: (context) => OurServicesAnimationCubit(false) ),
              BlocProvider(create: (context) => NavControlCubit(0) ),
              BlocProvider(create: (context) => ServicesProvideCubit(false) ),
            ],
            child: MaterialApp(

              debugShowCheckedModeBanner: false,
              title: 'SCoder-Shabir khan',
              theme: ThemeData(

                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
              ),
              home: FutureBuilder(
                future: _firebaseInit,
                builder: (context, snapshot) {
                  if (snapshot.hasData && !snapshot.hasError) {
                    return HomeScreen();
                  } else
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator(),);
                  } else if (snapshot.hasError) {
                    return Scaffold(body: Center(
                      child: SelectableText(snapshot.hasError.toString()),),);
                  } else {
                    return Center(child: Text('Some thing went wrong'),);
                  }
                },
              ),

              routes: {
             //   '/image-preview' : (context)=>const CustomImagePreview(),
              },
            ),


          ),

      minTextAdapt: true,

    );
  }

}

