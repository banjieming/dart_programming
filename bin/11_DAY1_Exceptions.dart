void main() {
  try {
    var a = 10;
    var b = 0;
    print(a ~/ b);
  } catch (e, s) {
    print("Exception happened: $e");
    print("Stack trace: $e");
  } finally {
    print("This is still executed");
  }
}
