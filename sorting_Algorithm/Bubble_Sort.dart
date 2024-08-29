
List<int> bubbleSort(List<int> list) {
  int n = list.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        // Swap the elements
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
  return list;
}
void main() {
  List<int> list = [64, 34, 25, 12, 22, 11, 90];
  print("Original list: $list");
  List<int> sortedList = bubbleSort(list);
  print("Sorted list: $sortedList");
}
