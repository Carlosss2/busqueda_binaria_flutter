import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/guess_game_provider.dart';
import '../widgets/action_buttons.dart';
import '../widgets/game_header.dart';
import '../widgets/game_result.dart';
import '../widgets/guess_display.dart';

class GuessGameScreen extends StatelessWidget {
  const GuessGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Adivina tu pensamiento')),
      body: Consumer<GuessGameProvider>(
        builder: (context, provider, _) {
          if (provider.currentGuess == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.gameOver) {
            return GameResult(
              won: provider.won,
              number: provider.currentGuess!,
              attempts: provider.attempts,
              message: provider.errorMessage,
              onPlayAgain: () => provider.startGame(),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GameHeader(
                  min: provider.min,
                  max: provider.max,
                  attempts: provider.attempts,
                ),
                const SizedBox(height: 32),
                GuessDisplay(guess: provider.currentGuess!),
                const SizedBox(height: 32),
                ActionButtons(
                  onHigher: () => provider.higher(),
                  onLower: () => provider.lower(),
                  onCorrect: () => provider.correct(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
