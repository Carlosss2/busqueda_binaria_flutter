import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'shared/theme/theme.dart';
import 'shared/theme/util.dart';
import 'feauteres/feat_02/presentation/pages/guess_game_page.dart';
import 'feauteres/feat_02/presentation/provider/guess_game_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, 'Poppins', 'Roboto');
    MaterialTheme materialTheme = MaterialTheme(textTheme);
    return ChangeNotifierProvider(
      create: (_) => GuessGameProvider(),
      child: MaterialApp(
        title: 'Adivina tu pensamiento',
      
        theme: materialTheme.light(),
        darkTheme: materialTheme.dark(),
        home: const GuessGameScreen(),
      ),
    );
  }
}



