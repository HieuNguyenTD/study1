void main() {
  double a = 10, b = -50, c = 11, d = 6, e = 8;

  List<double> numbers = [a, b, c, d, e];

  if (numbers.isNotEmpty) {
    numbers.sort();
    print(numbers.last);

    numbers.sort((a, b) => (b - a).toInt());
    print(numbers.last);

    numbers.sort((a, b) => b.compareTo(a));
    print(numbers.last);
    print('abc');
  }
}
