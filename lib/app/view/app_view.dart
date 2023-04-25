import 'package:bir_umma/modules/modules.dart';
import 'package:bir_umma/modules/profile/logic/profile_cubit.dart';
import 'package:bir_umma/modules/question_answer/question_answer.dart';
import 'package:bir_umma/modules/quran/quran.dart';
import 'package:bir_umma/modules/zikir/logic/zikir_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => MainCubit(),
          ),
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
          BlocProvider(
            create: (context) => QuestionAnswerCubit(),
          ),
          BlocProvider(
            create: (context) => QuranCubit(),
          ),
          BlocProvider(
            create: (context) => ZikirCubit(),
          ),
          BlocProvider(
            create: (context) => ProfileCubit(),
          ),
        ],
        child: const MainView(),
      ),
    );
  }
}
