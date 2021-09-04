bool isPalindrom(String word) => word == word.split("").reversed.join();

void main(List<String> args) {
  List<String> words = ['agua', 'oso', 'diego', 'ana'];
  words.forEach((word) {
    print(isPalindrom(word));
  });
}
