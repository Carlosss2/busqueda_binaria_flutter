import 'package:flutter/foundation.dart';

class GuessGameProvider extends ChangeNotifier {
  static const int maxAttempts = 5;

  GuessGameProvider() {
    startGame();
  }

  int _min = 1;
  int _max = 100;
  int? _currentGuess;
  int _attempts = 0;
  int _totalGames = 0;
  bool _gameOver = false;
  bool _won = false;
  bool _lost = false;
  String? _errorMessage;

  int get min => _min;
  int get max => _max;
  int? get currentGuess => _currentGuess;
  int get attempts => _attempts;
  int get attemptsLeft => maxAttempts - _attempts;
  int get totalGames => _totalGames;
  bool get gameOver => _gameOver;
  bool get won => _won;
  bool get lost => _lost;
  String? get errorMessage => _errorMessage;

  void startGame() {
    _min = 1;
    _max = 100;
    _attempts = 1;
    _gameOver = false;
    _won = false;
    _lost = false;
    _errorMessage = null;
    _currentGuess = _midpoint();
    notifyListeners();
  }

  int _midpoint() => (_min + _max) ~/ 2;

  void higher() {
    if (_gameOver) return;
    _currentGuess = _currentGuess! + 1;
    if (_currentGuess! > _max) {
      _errorMessage = 'Parece que hubo una inconsistencia. ¡Vuelve a intentar!';
      _gameOver = true;
      notifyListeners();
      return;
    }
    _min = _currentGuess!;
    _attempts++;
    if (_attempts > maxAttempts) {
      _lost = true;
      _gameOver = true;
      notifyListeners();
      return;
    }
    _currentGuess = _midpoint();
    notifyListeners();
  }

  void lower() {
    if (_gameOver) return;
    _currentGuess = _currentGuess! - 1;
    if (_currentGuess! < _min) {
      _errorMessage = 'Parece que hubo una inconsistencia. ¡Vuelve a intentar!';
      _gameOver = true;
      notifyListeners();
      return;
    }
    _max = _currentGuess!;
    _attempts++;
    if (_attempts > maxAttempts) {
      _lost = true;
      _gameOver = true;
      notifyListeners();
      return;
    }
    _currentGuess = _midpoint();
    notifyListeners();
  }

  void correct() {
    if (_gameOver) return;
    _won = true;
    _gameOver = true;
    _totalGames++;
    notifyListeners();
  }
}
