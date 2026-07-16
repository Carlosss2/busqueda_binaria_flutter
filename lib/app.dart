import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'shared/theme/theme.dart';
import 'shared/theme/util.dart';
import 'feauteres/counter/presentation/pages/counter_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, 'Poppins', 'Roboto');
    MaterialTheme materialTheme = MaterialTheme(textTheme);
    return ProviderScope(
      child: MaterialApp(
        title: 'Counter App',
        theme: materialTheme.light(),
        darkTheme: materialTheme.dark(),
        home: const CounterPage(),
      ),
    );
  }
}
