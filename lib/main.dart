import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:hive_sample/bloc%20functions/bloc/addstd/add_std_bloc.dart';
import 'package:hive_sample/bloc%20functions/bloc/editstd/editstd_bloc.dart';
import 'package:hive_sample/bloc%20functions/bloc/saerch/search_bloc.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';
import 'package:hive_sample/screens/screen1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StdModalAdapter().typeId)) {
    Hive.registerAdapter(StdModalAdapter());
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddStdBloc(),
        ),
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
        BlocProvider(
          create: (context) => EditstdBloc(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstScreen(),
      ),
    );
  }
}
