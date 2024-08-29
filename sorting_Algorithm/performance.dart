import 'dart:math';
import 'bubble_sort.dart';
import 'quick_sort.dart';

void main() {
  // Generate a random list of integers
  List<int> randomList = List.generate(1000, (_) => Random().nextInt(10000));

 
  DateTime startBubbleSort = DateTime.now();
  List<int> sortedByBubble = bubbleSort(List.from(randomList));
  DateTime endBubbleSort = DateTime.now();
  Duration bubbleSortTime = endBubbleSort.difference(startBubbleSort);


  DateTime startQuickSort = DateTime.now();
  List<int> sortedByQuick = quickSort(List.from(randomList));
  DateTime endQuickSort = DateTime.now();
  Duration quickSortTime = endQuickSort.difference(startQuickSort);


  print("Bubble Sort Time: ${bubbleSortTime.inMilliseconds} ms");
  print("Quick Sort Time: ${quickSortTime.inMilliseconds} ms");

 
  print("Is Bubble Sort Correct? ${sortedByBubble.join(',') == sortedByQuick.join(',')}");
  print("Is Quick Sort Correct? ${sortedByQuick.join(',') == sortedByBubble.join(',')}");
}
