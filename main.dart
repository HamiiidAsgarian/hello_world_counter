import 'dart:io';

void main() {
  loop();
}

loop() async {
  var shadow = [];
  for (var i = 0; i < res.length; i++) {
    for (var e in ascii) {
      clearConsole();
      print('${shadow.join('')}$e');
      if (e == res[i]) {
        shadow.add(e);
        break;
      }
      await Future.delayed(Duration(milliseconds: 100));
    }
  }
}

String res = 'HELLO WORLD';

List<String> ascii = [
  ' ',
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J',
  'K',
  'L',
  'M',
  'N',
  'O',
  'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
];

void clearConsole() {
  // Clearing console sequence
  stdout.write('\x1B[2J\x1B[0;0H');
}
