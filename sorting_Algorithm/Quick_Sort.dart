
List<int> quickSort(List<int> list) {
  if (list.length <= 1) {
    return list;
  }
  
  int pivot = list[list.length ~/ 2];
  List<int> left = [];
  List<int> right = [];
  List<int> equal = [];

  for (int num in list) {
    if (num < pivot) {
      left.add(num);
    } else if (num > pivot) {
      right.add(num);
    } else {
      equal.add(num);
    }
  }

  return quickSort(left) + equal + quickSort(right);
}
void main() {
  List<int> list = [78, 43, 100,2, 13, 30, 90];
  print("Original list: $list");
  List<int> sortedList = quickSort(list);
  print("Sorted list: $sortedList");
}