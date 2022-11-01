void main() {
  TestWidget wg1 = TestWidget(width: 100, height: 200);
  print(wg1);

  TestWidget wg2 = TestWidget.contructor2('Widget 2', width: 110, height: 220);
  print(wg2);
}

class TestWidget {
  int width;
  int height;
  String? sLabel;

  TestWidget({required this.width, required this.height});
  TestWidget.contructor2(this.sLabel, {required this.width, required this.height});

  @override
  String toString() {
    return 'TestWidget{width: $width, height: $height, sLabel: $sLabel}';
  }
}
