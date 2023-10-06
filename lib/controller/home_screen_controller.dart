class HomeScreenController {
  List<String> myList = ["anand", "shihab", "", "", ""];

  void addName(String newName) {
    myList.add(newName);
  }

  void deleteName(int index) {
    myList.removeAt(index);
  }
}
