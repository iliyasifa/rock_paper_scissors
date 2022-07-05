import 'dart:io';
import 'dart:math';

enum Move {
  rock,
  paper,
  scissor,
}

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors ? (r/p/s)  ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissor;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      print('You played $playerMove');
      print('You played $aiMove');
      if (playerMove == aiMove) {
        print("It's a draw");
      } else if (playerMove == Move.rock && aiMove == Move.scissor ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissor && aiMove == Move.paper) {
        print('You win');
      } else {
        print('You lose');
      }
    } else if (input == 'q') {
      print('You pressed quit button');
      break;
    } else {
      print('Invalid input');
    }
  }
}

// void main() {
//   int sum = 0;
//   List<int> values = [3, 5, 67];
// //   for (var value in values) {
// //     sum += value;
// //   }
//   values.forEach((value) => sum += value);
//   print(sum);
//   print(values);
// }
