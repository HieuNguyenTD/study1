void main() {
  double a = 10, b = -50, c = 11, d = 6, e = 8, f = -4, g = 15;

  List<double> numbers = [a, b, c, d, e, f, g];

  if (numbers.isNotEmpty) {
    numbers.sort();
    print(numbers.last);

    numbers.sort((a, b) => (b - a).toInt());
    print(numbers.last);

    numbers.sort((a, b) => b.compareTo(a));
    print(numbers.last);
    print('abcd');
  }
}
