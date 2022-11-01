import 'dart:io';

void main() {
  stdout.write('Xin chào, bạn tên là gì ? ');
  String? name = stdin.readLineSync();

  print('Xin chào $name! Bạn bao nhiêu tuổi rồi ? ');

  String? tuoi = '';
  bool bl = false;
  do {
    tuoi = stdin.readLineSync();

    if (!isNumeric(tuoi)) {
      stdout.write('Bạn nhập sai tuổi, vui lòng nhập lại: ');
    } else {
      bl = true;
    }
  } while (!bl);
  print('Tuổi của bạn là $tuoi tuổi');
  int yearto100 = 100 - int.parse(tuoi!);
  print('Còn lại $yearto100 năm nữa bạn sẽ mừng thọ 100 tuổi');
}

bool isNumeric(String? str) {
  if (str == null) return false;
  return double.tryParse(str) != null;
}
